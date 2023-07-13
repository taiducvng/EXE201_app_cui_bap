import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:metravel_demo1/components/bottom_bar_states.dart';
import 'package:metravel_demo1/constants/app_constants.dart';
import 'package:metravel_demo1/services/helpers/auth_helper.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:metravel_demo1/models/request/auth/login_model.dart';

class LoginNotifier extends ChangeNotifier {
  bool _obscureText = true;
  bool get obscureText => _obscureText;
  set obscureText(bool newState) {
    _obscureText = newState;
    notifyListeners();
  }

  bool _firstTime = true;
  bool get firstTime => _firstTime;
  set firstTime(bool newState) {
    _firstTime = newState;
    notifyListeners();
  }

  bool? _entryPoint;
  bool get entryPoint => _entryPoint ?? false;

  set entryPoint(bool newState) {
    _entryPoint = newState;
    notifyListeners();
  }

  bool? _loggedIn;
  bool get loggedIn => _loggedIn ?? false;

  set loggedIn(bool newState) {
    _loggedIn = newState;
    notifyListeners();
  }

  getPrefs() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    entryPoint = prefs.getBool('entryPoint') ?? false;
  }

  bool validateAndSave() {
    final form = GlobalKey<FormState>().currentState;
    if (form!.validate()) {
      form.save();
      return true;
    } else {
      return false;
    }
  }

  logout() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('loggedIn', false);
    _firstTime = false;
  }

  bool passwordValidator(String password) {
    if (password.isEmpty) return false;
    String pattern =
        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
    RegExp regex = RegExp(pattern);
    return regex.hasMatch(password);
  }

  userLogin(LoginModel model) {
    AuthHelper.login(model).then((response) {
      if (response && !firstTime) {
        Get.off(() => const MainScreen());
      } else if (response && firstTime) {
        Get.off(() => const MainScreen());
      } else if (!response) {
        Get.snackbar("Sign failed", "Please check your credentials",
            colorText: Color(kLight.value),
            backgroundColor: Colors.red,
            icon: Icon(Icons.add_alert));
      }
    });
  }
}
