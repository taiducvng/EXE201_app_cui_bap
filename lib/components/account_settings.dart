import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:metravel_demo1/components/height_spacer.dart';
import 'package:metravel_demo1/components/profile.dart';
import 'package:metravel_demo1/components/reusable_text.dart';
import 'package:metravel_demo1/components/reusable_text_for_logo.dart';
import 'package:metravel_demo1/constants/app_constants.dart';
import 'package:metravel_demo1/constants/app_style.dart';

import 'package:provider/provider.dart';

import '../VIews/login_provider.dart';
import '../VIews/onboard_screen.dart';
import 'no_trips.dart';

class AccountSettinggScreen extends StatefulWidget {
  const AccountSettinggScreen({super.key});

  @override
  State<AccountSettinggScreen> createState() => _AccountSettinggScreenState();
}

class _AccountSettinggScreenState extends State<AccountSettinggScreen> {
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
                    text: "Manage profile",
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
                          text: "Personal information",
                          style:
                              appstyle(20, Color(kDark.value), FontWeight.w400),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 0, vertical: 0),
                          backgroundColor: Color(00000),
                          elevation:
                              0, // Set the elevation to 0 to remove the shadow

                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        onPressed: () {
                          Get.to(() => const ProfilePage());
                        },
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 18, 0),
                          child: Icon(
                            Icons.arrow_forward,
                            color: Colors.amber,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(24, 0, 0, 0),
                    child: ReusableText(
                      text: "Vu Duc Anh",
                      style: appstyle(16, Color(kDark.value), FontWeight.w300),
                    ),
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
                      text: "Change password",
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
                          text: "Payment information",
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
                  Padding(
                    padding: EdgeInsets.fromLTRB(24, 0, 0, 0),
                    child: ReusableText(
                      text: "Add a credit card",
                      style: appstyle(16, Color(kDark.value), FontWeight.w300),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(24, 0, 0, 0),
                    child: ReusableText(
                      text: "Manage point",
                      style:
                          appstyle(18, Color(kDarkGrey.value), FontWeight.w300),
                    ),
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
                          text: "Total point",
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
                  Padding(
                    padding: EdgeInsets.fromLTRB(24, 0, 0, 0),
                    child: ReusableText(
                      text: "Current features are developed. ",
                      style: appstyle(16, Color(kDark.value), FontWeight.w300),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(24, 0, 0, 0),
                    child: ReusableText(
                      text: "Kindly wait !",
                      style: appstyle(16, Color(kDark.value), FontWeight.w300),
                    ),
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
                      text: "My promotions",
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
                          text: "Program benefits",
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
                  Padding(
                    padding: EdgeInsets.fromLTRB(24, 0, 0, 0),
                    child: ReusableText(
                      text: "App settings. ",
                      style: appstyle(16, Color(kDark.value), FontWeight.w300),
                    ),
                  ),
                ],
              ),
              HeightSpacer(size: height * 0.03),
              Consumer<LoginNotifier>(builder: (context, LoginNotifier, child) {
                return ElevatedButton(
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
                    style: appstyle(15, Color(kLight.value), FontWeight.w400),
                  ),
                );
              })
            ],
          ),
        ),
      ),
    );
  }
}
