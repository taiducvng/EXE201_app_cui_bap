import 'package:flutter/material.dart';
import 'package:metravel_demo1/VIews/confirm_booking_room.dart';
import 'package:metravel_demo1/constants/app_constants.dart';
import 'package:get/get.dart';
import 'package:metravel_demo1/constants/app_style.dart';
import 'package:metravel_demo1/components/height_spacer.dart';
import 'package:metravel_demo1/components/reusable_text.dart';
import 'package:metravel_demo1/components/reusable_text_for_logo.dart';

class RoomBookingResultScreen extends StatefulWidget {
  const RoomBookingResultScreen({super.key});

  @override
  State<RoomBookingResultScreen> createState() =>
      _RoomBookingResultScreenState();
}

class _RoomBookingResultScreenState extends State<RoomBookingResultScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(25, 16, 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(16, 0, 0, 0),
                        child: Icon(Icons.arrow_back_ios),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(32, 0, 0, 0),
                        child: ReusableText(
                          text: "Review Reservation",
                          style:
                              appstyle(16, Color(kDark.value), FontWeight.w400),
                        ),
                      ),
                    ],
                  ),
                  HeightSpacer(size: height * 0.025),
                  //brief descriptions
                  Row(
                    children: [
                      IconButton(
                        onPressed: null,
                        icon: Image.asset('assets/images/Rectangle33.png'),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                        child: Column(
                          children: [
                            ReusableText(
                              text: "Luxvoy Luxury Hotel",
                              style: appstyle(
                                  18, Color(kDark.value), FontWeight.w400),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 32, 0),
                              child: ReusableText(
                                text: "South Sai Gon",
                                style: appstyle(
                                    18, Color(kDark.value), FontWeight.w400),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  // titles
                  HeightSpacer(size: height * 0.015),
                  ReusableText(
                    text: "Stay information",
                    style:
                        appstyle(16, Color(kDarkGrey.value), FontWeight.w400),
                  ),
                  HeightSpacer(size: height * 0.015),
                  ReusableText(
                    text: "Sep 11 - 12 (1 Nights)",
                    style: appstyle(14, Color(kDark.value), FontWeight.w400),
                  ),
                  HeightSpacer(size: height * 0.01),
                  ReusableText(
                    text: "1 Room, 1 Guests",
                    style: appstyle(14, Color(kDark.value), FontWeight.w400),
                  ),
                  HeightSpacer(size: height * 0.01),

                  Divider(
                    color: Colors.black,
                    indent: 0,
                    endIndent: 20,
                    height: height * 0.123,
                  ),
                  Divider(
                    color: Colors.black,
                    indent: 0,
                    endIndent: 20,
                    height: height * 0.003,
                  ),
                  HeightSpacer(size: height * 0.015),
                  ReusableText(
                    text: "Payment information",
                    style:
                        appstyle(17, Color(kDarkGrey.value), FontWeight.w400),
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: null,
                        icon: Image.asset('assets/images/mastercard.png'),
                      ),
                      SizedBox(width: width * 0.01),
                      IconButton(
                        onPressed: null,
                        icon: Image.asset('assets/images/4dots.png'),
                      ),
                      ReusableText(
                        text: "1234",
                        style:
                            appstyle(14, Color(kDark.value), FontWeight.w400),
                      ),
                    ],
                  ),
                  // modify changes
                  ReusableText(
                    text: "Modifying",
                    style:
                        appstyle(17, Color(kDarkGrey.value), FontWeight.w400),
                  ),
                  HeightSpacer(size: height * 0.0125),
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 4, 0),
                        child: ReusableText(
                          text:
                              "Your booking will be used(30%) for charity donations",
                          style:
                              appstyle(12, Color(kDark.value), FontWeight.w400),
                        ),
                      ),
                      ReusableText(
                        text: "and that could save a lot of children!",
                        style:
                            appstyle(12, Color(kDark.value), FontWeight.w400),
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.black,
                    indent: 0,
                    endIndent: 20,
                    height: height * 0.043,
                  ),
                  ReusableText(
                    text: "Cancellation policy",
                    style:
                        appstyle(17, Color(kDarkGrey.value), FontWeight.w400),
                  ),
                  HeightSpacer(size: height * 0.0125),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: ReusableText(
                          text: "You may cancel your reservation for no charge",
                          style:
                              appstyle(13, Color(kDark.value), FontWeight.w400),
                        ),
                      ),
                      ReusableText(
                        text:
                            "before 3 days' arrival. Please note that we will",
                        style:
                            appstyle(13, Color(kDark.value), FontWeight.w400),
                      ),
                      ReusableText(
                        text: "assess a fee of 500000 VND if you ",
                        style:
                            appstyle(13, Color(kDark.value), FontWeight.w400),
                      ),
                      ReusableText(
                        text: "must cancel after this deadline.",
                        style:
                            appstyle(13, Color(kDark.value), FontWeight.w400),
                      ),
                      HeightSpacer(size: height * 0.026),
                      Center(
                        child: ElevatedButton(
                            onPressed: () {
                              Get.to(
                                  () => const ConfirmRoomBookingResultScreen());
                            },
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 113, vertical: 12),
                              backgroundColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24),
                              ),
                            ),
                            child: ReusableTextForLogo(
                                text: "Book Now",
                                style: appstyle(
                                    15, Color(kLight.value), FontWeight.w400))),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
