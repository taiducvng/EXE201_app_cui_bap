import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:metravel_demo1/constants/app_style.dart';
import 'package:metravel_demo1/constants/app_constants.dart';
import 'package:metravel_demo1/constants/custom_outline_btn.dart';
import 'package:metravel_demo1/components/height_spacer.dart';
import 'package:metravel_demo1/VIews/login.dart';
import 'package:metravel_demo1/components/reusable_text.dart';
import 'package:metravel_demo1/components/reusable_text_for_logo.dart';
import 'package:metravel_demo1/VIews/signup.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PageThree extends StatelessWidget {
  const PageThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/onboard003.png"),
              fit: BoxFit.cover),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Image.asset("assets/images/metravel.png"),

              HeightSpacer(size: hieght! * 0.04),
              Image.asset("assets/images/Logo.png"),
              HeightSpacer(size: hieght! * 0.12),
              //550 pixels to screen for responsive

              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(12, 12, 14, 8),
                    child: ReusableTextForLogo(
                      text: "Elevate your experience",
                      style: appstyle(30, Color(kLight.value), FontWeight.w500),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(14, 12, 13.26, 0),
                    child: ReusableTextForLogo(
                      text:
                          "Gain access to special rates and exclusive experiences.",
                      style:
                          appstyle(17, Color(kLight.value), FontWeight.normal),
                    ),
                  ),
                ],
              ),
              HeightSpacer(size: 0.03 * hieght!),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomOutlineBtn(
                    OnTap: () {
                      Get.to(() => const RegistrationPage());
                    },
                    text: "Join",
                    width: width! * 0.4,
                    height: hieght! * 0.06,
                    color: Color(kLight.value),
                    color2: Colors.black.withOpacity(0.05),
                  ),
                  GestureDetector(
                    onTap: () async {
                      final SharedPreferences prefs =
                          await SharedPreferences.getInstance();
                      await prefs.setBool('entryPoint', true);
                      Get.to(() => const LoginPage());
                    },
                    child: Container(
                      width: width! * 0.4,
                      height: hieght! * 0.06,
                      color: Color(kLight.value),
                      child: Center(
                        child: ReusableText(
                            text: "Sign in",
                            style: appstyle(
                                16, Color(kDark.value), FontWeight.w600)),
                      ),
                    ),
                  )
                ],
              ),
              HeightSpacer(size: hieght! * 0.05),
              ReusableText(
                text: "Continue as guest",
                style: TextStyle(
                  fontSize: 18,
                  decoration: TextDecoration.underline,
                  color: Color(kLightGrey.value),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
