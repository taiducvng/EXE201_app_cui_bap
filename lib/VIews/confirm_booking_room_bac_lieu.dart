import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:metravel_demo1/VIews/success_booking_demo_baclieu.dart';
import 'package:metravel_demo1/constants/app_style.dart';
import 'package:metravel_demo1/components/reusable_text.dart';
import 'package:metravel_demo1/constants/app_constants.dart';
import 'package:metravel_demo1/components/height_spacer.dart';
import 'package:metravel_demo1/components/reusable_text_for_logo.dart';


class ConfirmRoomBookingResultScreenBacLieu extends StatefulWidget {
  static const String routeName = '/confirm_booking_screen_bac_lieu';
  const ConfirmRoomBookingResultScreenBacLieu(
      {super.key,
      this.selectDate,
      this.guestAndRoom,
      this.dropdownValueForLocation,
      this.durations,
      this.bookPrice});
  final String? selectDate;
  final String? guestAndRoom;

  final String? dropdownValueForLocation;
  final int? durations;
  final int? bookPrice;
  @override
  State<ConfirmRoomBookingResultScreenBacLieu> createState() =>
      _ConfirmRoomBookingResultScreenBacLieuState();
}

class _ConfirmRoomBookingResultScreenBacLieuState
    extends State<ConfirmRoomBookingResultScreenBacLieu> {
  String dropdownValue = 'Choose';
  @override
  void initState() {
    super.initState();
    dropdownValue = 'Choose'; // Initialize the dropdownValue
  }

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
    num charityPrice = bookPrice! * 0.025;
    num taxPrice = bookPrice! * 0.1;

    num bookPrice1 = bookPrice * durations!;
    num totalPrice = (taxPrice + charityPrice + bookPrice1);
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
                              text: "Nhà nghỉ Khang Khang",
                              style: appstyle(
                                  18, Color(kDark.value), FontWeight.w400),
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
                    text: selectDate.toString() +
                        " (" +
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
                  ReusableText(
                    text: "Summary of charges",
                    style:
                        appstyle(16, Color(kDarkGrey.value), FontWeight.w400),
                  ),
                  HeightSpacer(size: height * 0.015),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ReusableText(
                        text: "Booking charges",
                        style:
                            appstyle(14, Color(kDark.value), FontWeight.w400),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 16, 0),
                        child: ReusableText(
                          text: bookPrice1.toString() + " VND",
                          style:
                              appstyle(14, Color(kDark.value), FontWeight.w400),
                        ),
                      ),
                    ],
                  ),
                  HeightSpacer(size: height * 0.01),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ReusableText(
                        text: "Charity charges",
                        style:
                            appstyle(14, Color(kDark.value), FontWeight.w400),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 16, 0),
                        child: ReusableText(
                          text: charityPrice.round().toString() + " VND",
                          style:
                              appstyle(14, Color(kDark.value), FontWeight.w400),
                        ),
                      ),
                    ],
                  ),
                  HeightSpacer(size: height * 0.015),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ReusableText(
                        text: "Taxes and fee",
                        style:
                            appstyle(14, Color(kDark.value), FontWeight.w400),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 16, 0),
                        child: ReusableText(
                          text: taxPrice.round().toString() + " VND",
                          style:
                              appstyle(14, Color(kDark.value), FontWeight.w400),
                        ),
                      ),
                    ],
                  ),
                  HeightSpacer(size: height * 0.015),
                  Divider(
                    color: Color(0xFFFF9D43),
                    indent: 0,
                    endIndent: 20,
                    height: height * 0.003,
                  ),
                  HeightSpacer(size: height * 0.015),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ReusableText(
                        text: "Total stay",
                        style:
                            appstyle(14, Color(kDark.value), FontWeight.w400),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 16, 0),
                        child: ReusableText(
                          text: totalPrice.round().toString() + " VND",
                          style:
                              appstyle(14, Color(kDark.value), FontWeight.w400),
                        ),
                      ),
                    ],
                  ),
                  //done the total price
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
                          text: "We charge this fee so it can be transferred",
                          style:
                              appstyle(13, Color(kDark.value), FontWeight.w400),
                        ),
                      ),
                      ReusableText(
                        text: "to the charitys.Every booking will have a big ",
                        style:
                            appstyle(13, Color(kDark.value), FontWeight.w400),
                      ),
                      ReusableText(
                        text: "impact to change the world!",
                        style:
                            appstyle(13, Color(kDark.value), FontWeight.w400),
                      ),
                    ],
                  ),
                  //
                  HeightSpacer(size: height * 0.01),
//
                  ReusableText(
                    text: "Payment information",
                    style:
                        appstyle(17, Color(kDarkGrey.value), FontWeight.w400),
                  ),
                  DropdownButton<String>(
                    value: dropdownValue,
                    icon: const Icon(Icons.menu),
                    items: [
                      DropdownMenuItem<String>(
                          value: 'Choose', child: Text("Choose")),
                      DropdownMenuItem<String>(
                          value: 'Momo', child: Text("Momo payment")),
                      DropdownMenuItem<String>(
                          value: 'VND', child: Text("VND")),
                    ],
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownValue = newValue!;
                      });
                    },
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
                        text: "assess a fee of " +
                            totalPrice.round().toString() +
                            " VND if you must cancel ",
                        style:
                            appstyle(13, Color(kDark.value), FontWeight.w400),
                      ),
                      ReusableText(
                        text: " after this deadline.",
                        style:
                            appstyle(13, Color(kDark.value), FontWeight.w400),
                      ),
                      HeightSpacer(size: height * 0.026),
                      Center(
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).pushNamed(
                                SuccessRoomBookingResultScreenBacLieu.routeName,
                                arguments: {
                                  'selectDate': selectDate,
                                  'guestAndRoom': guestAndRoom,
                                  'dropdownValueForLocation':
                                      dropdownValueForLocation,
                                  'durations': durations,
                                  'bookPrice': bookPrice,
                                  'bookPrice1': bookPrice1,
                                },
                              );
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
