import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:metravel_demo1/components/height_spacer.dart';
import 'package:metravel_demo1/components/reusable_text.dart';
import 'package:metravel_demo1/constants/app_constants.dart';
import 'package:metravel_demo1/constants/app_style.dart';


import 'detailed_trip_details.dart';

class NoTrips extends StatelessWidget {
  const NoTrips({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double padding1 = width * 0.35;
    return Padding(
      padding: EdgeInsets.fromLTRB(0, width * 0.4, 0, 0),
      child: Center(
        child: Column(
          children: [
            ReusableText(
              text: "You have no past trips. When you",
              style: appstyle(18, Color(kDark.value), FontWeight.w400),
            ),
            ReusableText(
              text: "do, they'll appear here.",
              style: appstyle(18, Color(kDark.value), FontWeight.w400),
            ),
            HeightSpacer(size: height * 0.05),
            ElevatedButton(
              onPressed: () {
                Get.to(() => const DetailedTripScreen());
              },
              style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                backgroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
              ),
              child: Text(
                'Book a trip',
                style: TextStyle(
                  fontSize: 18,
                  color: Color(kLight.value),
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
