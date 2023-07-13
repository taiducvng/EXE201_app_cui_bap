import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:metravel_demo1/components/height_spacer.dart';
import 'package:metravel_demo1/components/reusable_text.dart';
import 'package:metravel_demo1/components/reusable_text_for_logo.dart';
import 'package:metravel_demo1/constants/app_constants.dart';
import 'package:metravel_demo1/constants/app_style.dart';


import '../VIews/onboard_screen.dart';

class AccountSupportScreen extends StatefulWidget {
  const AccountSupportScreen({super.key});

  @override
  State<AccountSupportScreen> createState() => _AccountSupportScreenState();
}

class _AccountSupportScreenState extends State<AccountSupportScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: SafeArea(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: ReusableText(
                    text: "Support and information",
                    style:
                        appstyle(18, Color(kDarkGrey.value), FontWeight.w400),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(24),
                        child: ReusableText(
                          text: "Visit help center",
                          style:
                              appstyle(20, Color(kDark.value), FontWeight.w400),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 18, 0),
                        child: Icon(
                          Icons.arrow_forward,
                          color: Colors.amber,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Divider(),
              //opts 2
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.all(24),
                    child: ReusableText(
                      text: "Give us feedback",
                      style: appstyle(20, Color(kDark.value), FontWeight.w400),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 18, 0),
                    child: Icon(
                      Icons.arrow_forward,
                      color: Colors.amber,
                    ),
                  ),
                ],
              ),
              Divider(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(24, 12, 24, 24),
                        child: ReusableText(
                          text: "Terms and conditions",
                          style:
                              appstyle(20, Color(kDark.value), FontWeight.w400),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 18, 0),
                        child: Icon(
                          Icons.arrow_forward,
                          color: Colors.amber,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(24, 12, 24, 24),
                        child: ReusableText(
                          text: "Data privacy center",
                          style:
                              appstyle(20, Color(kDark.value), FontWeight.w400),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 18, 0),
                        child: Icon(
                          Icons.arrow_forward,
                          color: Colors.amber,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Divider(),
              //opts My promotions
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.all(24),
                    child: ReusableText(
                      text: "About us",
                      style: appstyle(20, Color(kDark.value), FontWeight.w400),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 18, 0),
                    child: Icon(
                      Icons.arrow_forward,
                      color: Colors.amber,
                    ),
                  ),
                ],
              ),

              HeightSpacer(size: height * 0.03),
              ElevatedButton(
                  onPressed: () {
                    Get.defaultDialog(
                      title: "Are you sure you want to hehe",
                      textConfirm: "Confirm",
                      textCancel: "Cancel",
                      confirmTextColor: Color(kDark.value),
                      onCancel: () {},
                      onConfirm: () {
                        Get.to(() => const OnboardScreen());
                      },
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    padding:
                        EdgeInsets.symmetric(horizontal: 113, vertical: 12),
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                  ),
                  child: ReusableTextForLogo(
                      text: "Sign out",
                      style:
                          appstyle(15, Color(kLight.value), FontWeight.w400))),
            ],
          ),
        ),
      ),
    );
  }
}
