import 'package:flutter/material.dart';
import 'package:metravel_demo1/constants/app_style.dart';
import 'package:metravel_demo1/constants/app_constants.dart';
import 'package:metravel_demo1/components/height_spacer.dart';
import 'package:metravel_demo1/components/reusable_text_for_logo.dart' show ReusableTextForLogo;

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/onboard01.png"),
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
                  text: "Discover the beauty of Vietnam",
                  style: appstyle(28, Color(kLight.value), FontWeight.w500),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(12, 12, 12, 0),
                child: ReusableTextForLogo(
                  text: "230+ Hotels to earn and redeem your point.",
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
