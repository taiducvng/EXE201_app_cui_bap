import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:metravel_demo1/constants/app_style.dart';
import 'package:metravel_demo1/constants/app_constants.dart';
import 'package:metravel_demo1/constants/custom_textfield.dart';
import 'package:metravel_demo1/constants/custom_btn.dart';
import 'package:metravel_demo1/components/height_spacer.dart';
import 'package:metravel_demo1/VIews/login_provider.dart';
import 'package:metravel_demo1/models/request/auth/login_model.dart';
import 'package:metravel_demo1/components/reusable_text.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
    final TextEditingController email = TextEditingController();
    final TextEditingController password = TextEditingController();

    @override
    void dispose() {
      email.dispose();
      password.dispose();
      super.dispose();
    }

  @override
  Widget build(BuildContext context) {
    return Consumer<LoginNotifier>(
      builder: (context, loginNotifier, child) {
        loginNotifier.getPrefs();
        //  print(loginNotifier.loggedIn);
        return Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: AppBar(
              automaticallyImplyLeading: false,
              // title: Text("Login"),
              actions: [
                loginNotifier.entryPoint && loginNotifier.loggedIn
                    ? IconButton(
                        onPressed: () {
                          Get.back();
                        },
                        icon: const Icon(CupertinoIcons.clear),
                      )
                    : SizedBox.shrink(),
              ],
            ),
          ),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                HeightSpacer(
                  size: 50,
                ),
                ReusableText(
                  text: "Sign in",
                  style: appstyle(28, Color(kDark.value), FontWeight.w400),
                ),
                HeightSpacer(
                  size: 30,
                ),
                ReusableText(
                  text: "Email address or mobile number ",
                  style: appstyle(14, Color(kDark.value), FontWeight.w400),
                ),
                HeightSpacer(
                  size: 15,
                ),
                CustomTextField(
                  controller: email,
                  keyboardType: TextInputType.emailAddress,
                  hintText: "Email or mobile number",
                  validator: (email) {
                    if (email!.isEmpty || !email.contains("@")) {
                      return "Ẹnter a valid email";
                    } else {
                      return null;
                    }
                  },
                ),
                HeightSpacer(
                  size: 10,
                ),
                ReusableText(
                  text: "Password ",
                  style: appstyle(14, Color(kDark.value), FontWeight.w400),
                ),
                HeightSpacer(
                  size: 15,
                ),
                CustomTextField(
                  controller: password,
                  keyboardType: TextInputType.text,
                  obscureText: loginNotifier.obscureText,
                  hintText: "Password",
                  validator: (password) {
                    if (password!.isEmpty || password.length < 8) {
                      return "Ẹnter a valid pass";
                    } else {
                      return null;
                    }
                  },
                  suffixIcon: GestureDetector(
                    onTap: () {
                      loginNotifier.obscureText = !loginNotifier.obscureText;
                    },
                    child: Icon(
                      loginNotifier.obscureText
                          ? Icons.visibility
                          : Icons.visibility_off,
                      color: Color(kDark.value),
                    ),
                  ),
                ),
                HeightSpacer(size: 10),
                Align(
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                    onTap: null,
                    child: ReusableText(
                        text: "Forgot password?",
                        style:
                            appstyle(14, Color(kDark.value), FontWeight.w400)),
                  ),
                ),
                HeightSpacer(size: 20),
                CustomButton(
                  onTap: () {
                    // Get.to(
                    //   () => const MainScreen(),

                    // );
                    // if (loginNotifier.validateAndSave()) {

                    // } else {
                    //   Get.snackbar(
                    //       "Sign failed", "Please check your credentials",
                    //       colorText: Color(kLight.value),
                    //       backgroundColor: Colors.red,
                    //       icon: Icon(Icons.add_alert));
                    // }
                    LoginModel model =
                        LoginModel(email: email.text, password: password.text);
                    loginNotifier.userLogin(model);
                  },
                  text: "Login",
                ),
                HeightSpacer(size: 35),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        // _launchURL("www.messenger.com");
                      },
                      child: ReusableText(
                        text: "Need help signing in",
                        style:
                            appstyle(14, Color(kDark.value), FontWeight.w400),
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward,
                      size: 18,
                      color: Color(kDark.value),
                    ),
                  ],
                ),
                HeightSpacer(size: 35),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ReusableText(
                      text: "Data privacy center",
                      style: appstyle(14, Color(kDark.value), FontWeight.w400),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 18,
                      color: Color(kDark.value),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
