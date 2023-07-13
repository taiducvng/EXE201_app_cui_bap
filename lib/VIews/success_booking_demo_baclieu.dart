import 'package:flutter/material.dart';
import 'package:metravel_demo1/components/bottom_bar_states.dart';
import 'package:metravel_demo1/constants/app_constants.dart';
import 'package:get/get.dart';
import 'package:metravel_demo1/constants/app_style.dart';
import 'package:metravel_demo1/components/height_spacer.dart';
import 'package:metravel_demo1/components/reusable_text.dart';
import 'package:metravel_demo1/components/reusable_text_for_logo.dart';

class SuccessRoomBookingResultScreenBacLieu extends StatefulWidget {
  static const String routeName = '/success_booking_screen_bac_lieu';
  const SuccessRoomBookingResultScreenBacLieu(
      {super.key,
      this.selectDate,
      this.guestAndRoom,
      this.dropdownValueForLocation,
      this.durations,
      this.bookPrice,
      this.bookPrice1});
  final String? selectDate;
  final String? guestAndRoom;
  final String? dropdownValueForLocation;
  final int? durations;
  final int? bookPrice;
  final int? bookPrice1;
  @override
  State<SuccessRoomBookingResultScreenBacLieu> createState() =>
      _SuccessRoomBookingResultScreenBacLieuState();
}

class _SuccessRoomBookingResultScreenBacLieuState
    extends State<SuccessRoomBookingResultScreenBacLieu> {
  @override
  Widget build(BuildContext context) {
    // Retrieve the arguments
    final Map<String, dynamic>? arguments =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;

    // Access the selectDate and guestAndRoom values
    final String? selectDate = arguments?['selectDate'];
    final String? guestAndRoom = arguments?['guestAndRoom'];
    final String? dropdownValueForLocation =
        arguments?['dropdownValueForLocation'];
    final int? durations = arguments?['durations'];
    final int? bookPrice = arguments?['bookPrice'];
    final int? bookPrice1 = arguments?['bookPrice1'];
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
                    ],
                  ),
                  // congrats screen
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/check.png"),
                        Padding(
                          padding: EdgeInsets.all(16),
                          child: ReusableText(
                            text: "Congratulations!",
                            style: appstyle(
                                18, Color(kDark.value), FontWeight.w400),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(16),
                          child: ReusableText(
                            text: "A confirmation email has been",
                            style: appstyle(
                                14, Color(kDark.value), FontWeight.w400),
                          ),
                        ),
                        ReusableText(
                          text: " sent to vuducanh@gmail.com",
                          style:
                              appstyle(14, Color(kDark.value), FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                  // congrats end
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
                              text: "Nhà nghỉ",
                              style: appstyle(
                                  18, Color(kDark.value), FontWeight.w400),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 32, 0),
                              child: ReusableText(
                                text: "Khang Khang",
                                style: appstyle(
                                    18, Color(kDark.value), FontWeight.w400),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  // confirm numbers
                  HeightSpacer(size: height * 0.015),
                  ReusableText(
                    text: "Confirmation numbers",
                    style:
                        appstyle(17, Color(kDarkGrey.value), FontWeight.w400),
                  ),
                  ReusableText(
                    text: "#96832021",
                    style: appstyle(15, Color(kDark.value), FontWeight.w400),
                  ),
                  // titles
                  HeightSpacer(size: height * 0.015),
                  Divider(
                    color: Colors.black,
                    indent: 0,
                    endIndent: 20,
                    height: height * 0.123,
                  ),
                  ReusableText(
                    text: "Stay information",
                    style:
                        appstyle(16, Color(kDarkGrey.value), FontWeight.w400),
                  ),
                  HeightSpacer(size: height * 0.015),
                  ReusableText(
                    text: selectDate.toString() +
                        "(" +
                        durations.toString() +
                        " days)",
                    style: appstyle(14, Color(kDark.value), FontWeight.w400),
                  ),
                  HeightSpacer(size: height * 0.01),
                  ReusableText(
                    text: guestAndRoom.toString(),
                    style: appstyle(14, Color(kDark.value), FontWeight.w400),
                  ),
                  HeightSpacer(size: height * 0.01),

                  Divider(
                    color: Colors.black,
                    indent: 0,
                    endIndent: 20,
                    height: height * 0.123,
                  ),

                  HeightSpacer(size: height * 0.015),
                  //additional charges
                  ReusableText(
                    text: "Additional charges",
                    style:
                        appstyle(17, Color(kDarkGrey.value), FontWeight.w400),
                  ),
                  HeightSpacer(size: height * 0.0125),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 8, 0),
                        child: ReusableText(
                          text: "Complimentary on-site parking",
                          style:
                              appstyle(13, Color(kDark.value), FontWeight.w400),
                        ),
                      ),
                      ReusableText(
                        text:
                            "Changes in taxes and fees will affect the total ",
                        style:
                            appstyle(13, Color(kDark.value), FontWeight.w400),
                      ),
                      ReusableText(
                        text: "room price",
                        style:
                            appstyle(13, Color(kDark.value), FontWeight.w400),
                      ),
                    ],
                  ),
                  //
                  HeightSpacer(size: height * 0.01),
//

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
                        padding: EdgeInsets.fromLTRB(0, 0, 8, 0),
                        child: ReusableText(
                          text: "Any change in the length or dates of a",
                          style:
                              appstyle(13, Color(kDark.value), FontWeight.w400),
                        ),
                      ),
                      ReusableText(
                        text: "reservation may result in a rate change",
                        style:
                            appstyle(13, Color(kDark.value), FontWeight.w400),
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
                        text:
                            "assess a fee of $bookPrice1 VND if you must cancel after",
                        style:
                            appstyle(13, Color(kDark.value), FontWeight.w400),
                      ),
                      ReusableText(
                        text: "this deadline.",
                        style:
                            appstyle(13, Color(kDark.value), FontWeight.w400),
                      ),
                      HeightSpacer(size: height * 0.026),
                      Center(
                        child: ElevatedButton(
                          onPressed: () {
                            Get.to(() => const MainScreen());
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
                            text: "Done",
                            style: appstyle(
                                15, Color(kLight.value), FontWeight.w400),
                          ),
                        ),
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
