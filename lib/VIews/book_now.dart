import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:metravel_demo1/constants/app_style.dart';
import 'package:metravel_demo1/components/reusable_text.dart';
import 'package:metravel_demo1/VIews/book_screen.dart';
import 'package:metravel_demo1/constants/app_constants.dart';
import 'package:metravel_demo1/components/height_spacer.dart';
import 'package:metravel_demo1/components/reusable_text_for_logo.dart';

class BookNow extends StatelessWidget {
  const BookNow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              AppBar(),
              HeightSpacer(size: 0.025 * hieght!),
              Column(
                children: [
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(22, 0, 0, 0),
                      child: ReusableText(
                        text: "It's time to switch off",
                        style:
                            appstyle(24, Color(kDark.value), FontWeight.w500),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(18, 12, 0, 2),
                      child: ReusableTextForLogo(
                        text: "Enjoy breakfast, bonus points and hotel  ",
                        style:
                            appstyle(15, Color(kDark.value), FontWeight.w400),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(18, 0, 0, 0),
                      child: ReusableTextForLogo(
                        text: " credits. ",
                        style:
                            appstyle(15, Color(kDark.value), FontWeight.w400),
                      ),
                    ),
                  ),
                  Ink.image(
                    image: NetworkImage(
                        "https://images.unsplash.com/photo-1609412058473-c199497c3c5d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80"),
                    height: hieght! * 0.26,
                    fit: BoxFit.cover,
                  ),
                  HeightSpacer(size: hieght! * 0.015),
                  Padding(
                    padding: EdgeInsets.fromLTRB(16, 12, 0, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.code),
                        Padding(
                          padding: EdgeInsets.fromLTRB(12, 0, 0, 0),
                          child: ReusableTextForLogo(
                            text:
                                " Get 1000 points and one additional, all with ",
                            style: appstyle(
                                12, Color(kDark.value), FontWeight.w400),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(48, 0, 0, 0),
                      child: ReusableTextForLogo(
                        text:
                            " no earning limits, benefits with twice the Elite ",
                        style:
                            appstyle(12, Color(kDark.value), FontWeight.w400),
                      ),
                    ),
                  ),
                  HeightSpacer(size: hieght! * 0.003),
                  Padding(
                    padding: EdgeInsets.fromLTRB(16, 12, 0, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.code),
                        Padding(
                          padding: EdgeInsets.fromLTRB(12, 0, 0, 0),
                          child: ReusableTextForLogo(
                            text: " Redeem your bonus point for free nights, ",
                            style: appstyle(
                                12, Color(kDark.value), FontWeight.w400),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(48, 0, 0, 0),
                      child: ReusableTextForLogo(
                        text: " unrivaled, and so much more. ",
                        style:
                            appstyle(12, Color(kDark.value), FontWeight.w400),
                      ),
                    ),
                  ),
                  HeightSpacer(size: hieght! * 0.001),
                  Padding(
                    padding: EdgeInsets.fromLTRB(16, 12, 0, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.code),
                        Padding(
                          padding: EdgeInsets.fromLTRB(12, 0, 0, 0),
                          child: ReusableTextForLogo(
                            text: "Book now, then earn from September 10 ",
                            style: appstyle(
                                12, Color(kDark.value), FontWeight.w400),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(48, 0, 0, 0),
                      child: ReusableTextForLogo(
                        text: " through September 20, 2022 ",
                        style:
                            appstyle(12, Color(kDark.value), FontWeight.w400),
                      ),
                    ),
                  ),
                  HeightSpacer(size: hieght! * 0.023),
                  ElevatedButton(
                      onPressed: () {
                        Get.to(() => const BookScreen());
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
                          text: "Book Now",
                          style: appstyle(
                              15, Color(kLight.value), FontWeight.w400))),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
