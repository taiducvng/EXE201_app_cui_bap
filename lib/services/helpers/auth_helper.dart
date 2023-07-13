import 'dart:convert';

import 'package:http/http.dart' as https;
import 'package:metravel_demo1/models/request/auth/login_model.dart';
import 'package:metravel_demo1/models/request/auth/signup_model.dart';
import 'package:metravel_demo1/models/response/auth/login_res_model.dart';
import 'package:metravel_demo1/services/config.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthHelper {
  static var client = https.Client();
  static Future<bool> login(LoginModel model) async {
    Map<String, String> requestHeaders = {'Content-Type': 'application/json'};
    var url = Uri.parse(
        "https://metravelbackend90-production.up.railway.app/api/login");
    var response = await client.post(
      url,
      headers: requestHeaders,
      body: jsonEncode(model),
    );
    if (response.statusCode == 200) {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      String userId = loginResponseModelFromJson(response.body).id;
      await prefs.setString("userId", userId);
      await prefs.setBool("loggedIn", true);
      return true;
    } else {
      return false;
    }
  }

  static Future<bool> register(SignupModel model) async {
    Map<String, String> requestHeaders = {'Content-Type': 'application/json'};
    var url = Uri.parse(
        "https://metravelbackend90-production.up.railway.app/api/register");
    var response = await client.post(
      url,
      headers: requestHeaders,
      body: jsonEncode(model),
    );
    if (response.statusCode == 201) {
      return true;
    } else {
      return false;
    }
  }
}
