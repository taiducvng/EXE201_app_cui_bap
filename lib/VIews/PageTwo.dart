import 'package:flutter/material.dart';
import 'package:metravel_demo1/constants/app_style.dart';
import 'package:metravel_demo1/constants/app_constants.dart';
import 'package:metravel_demo1/components/height_spacer.dart';
import 'package:metravel_demo1/components/reusable_text_for_logo.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/onboard002.png"),
            fit: BoxFit.cover),
      ),
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
                padding: EdgeInsets.fromLTRB(24, 12, 24, 8),
                child: ReusableTextForLogo(
                  text: "Travel with ease",
                  style: appstyle(28, Color(kLight.value), FontWeight.w500),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(18, 8, 22, 0),
                child: ReusableTextForLogo(
                  text: "Book, check in and make requests from anywhere.",
                  style: appstyle(18, Color(kLight.value), FontWeight.normal),
                ),
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
