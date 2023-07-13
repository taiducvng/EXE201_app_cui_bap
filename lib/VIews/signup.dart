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
import 'package:metravel_demo1/models/request/auth/signup_model.dart';
import 'package:metravel_demo1/components/reusable_text.dart';
import 'package:metravel_demo1/VIews/signup_provider.dart';
import 'package:provider/provider.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final TextEditingController name = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController password2 = TextEditingController();

  @override
  void dispose() {
    name.dispose();
    email.dispose();
    password.dispose();
    password2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var loginNotifier = Provider.of<LoginNotifier>(context);
    return Consumer<SignUpNotifier>(
      builder: (context, SignUpNotifier, child) {
        return Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: AppBar(
              automaticallyImplyLeading: false,
              // title: Text("Login"),
              actions: [
                IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: const Icon(CupertinoIcons.clear),
                ),
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
                  text: "Join the membership",
                  style: appstyle(22, Color(kDark.value), FontWeight.w400),
                ),
                ReusableText(
                  text: "All fields required unless otherwise noted. ",
                  style: appstyle(12, Color(kDark.value), FontWeight.w400),
                ),
                HeightSpacer(
                  size: 30,
                ),
                ReusableText(
                  text: "Email address  ",
                  style: appstyle(14, Color(kDark.value), FontWeight.w400),
                ),
                HeightSpacer(
                  size: 15,
                ),
                CustomTextField(
                  controller: email,
                  keyboardType: TextInputType.emailAddress,
                  hintText: "Email ",
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
                  text: "Username ",
                  style: appstyle(14, Color(kDark.value), FontWeight.w400),
                ),
                HeightSpacer(
                  size: 15,
                ),
                CustomTextField(
                  controller: name,
                  keyboardType: TextInputType.emailAddress,
                  hintText: "Username",
                  // validator: (email) {
                  //   if (email!.isEmpty || !email.contains("@")) {
                  //     return "Ẹnter a valid email";
                  //   } else {
                  //     return null;
                  //   }
                  // },
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
                  keyboardType: TextInputType.emailAddress,
                  obscureText: SignUpNotifier.obscureText,
                  hintText: "Password",
                  validator: (password) {
                    if (SignUpNotifier.passwordValidator(password ?? '')) {
                      return "Please enter a valid password with at least one upper case, one lowercase ,one special char";
                    }
                    return null;
                  },
                  suffixIcon: GestureDetector(
                    onTap: () {
                      SignUpNotifier.obscureText = !SignUpNotifier.obscureText;
                    },
                    child: Icon(
                      SignUpNotifier.obscureText
                          ? Icons.visibility
                          : Icons.visibility_off,
                      color: Color(kDark.value),
                    ),
                  ),
                ),
                HeightSpacer(
                  size: 18,
                ),
                ReusableText(
                  text: "Confirm password ",
                  style: appstyle(14, Color(kDark.value), FontWeight.w400),
                ),
                HeightSpacer(size: 18),
                CustomTextField(
                  controller: password2,
                  keyboardType: TextInputType.emailAddress,
                  obscureText: SignUpNotifier.obscureText,
                  hintText: "Confirm password",
                  validator: (password) {
                    if (password!.isEmpty || password.length < 8) {
                      return "Ẹnter a valid email";
                    } else {
                      return null;
                    }
                  },
                  suffixIcon: GestureDetector(
                    onTap: () {
                      SignUpNotifier.obscureText = !SignUpNotifier.obscureText;
                    },
                    child: Icon(
                      SignUpNotifier.obscureText
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
                        text: "Already have an account?Sign In",
                        style:
                            appstyle(14, Color(kDark.value), FontWeight.w400)),
                  ),
                ),
                HeightSpacer(size: 20),
                CustomButton(
                  onTap: () {
                    SignupModel model = SignupModel(
                        username: name.text,
                        email: email.text,
                        password: password.text);
                    SignUpNotifier.upSignup(model);
                  },
                  text: "Join",
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
