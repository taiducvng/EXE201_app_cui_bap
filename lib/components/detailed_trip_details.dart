import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:metravel_demo1/components/bottom_bar_states.dart';
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
class DetailedTripScreen extends StatefulWidget {
  const DetailedTripScreen({super.key});

  @override
  State<DetailedTripScreen> createState() => _DetailedTripScreenState();
}

class _DetailedTripScreenState extends State<DetailedTripScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Align(
                alignment: AlignmentDirectional.topStart,
                child: Card(
                  child: Ink.image(
                    image: NetworkImage(
                        "https://images.unsplash.com/photo-1551882547-ff40c63fe5fa?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80"),
                    fit: BoxFit.cover,
                    height: height * 0.4,
                    width: width,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  child: IconButton(
                                icon: Icon(Icons.arrow_back_ios),
                                onPressed: () {},
                              )),
                              Container(
                                  child: IconButton(
                                icon: Icon(Icons.arrow_back_ios),
                                onPressed: () {},
                              )),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HeightSpacer(size: height * 0.025),
                    //brief descriptions
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Column(
                        children: [
                          ReusableText(
                            text: "Luxvoy Luxury Ha Noi Hotel",
                            style: appstyle(
                                18, Color(kDark.value), FontWeight.w400),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ReusableText(
                                text: "Check in",
                                style: appstyle(14, Color(kDarkGrey.value),
                                    FontWeight.w400),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 0, 16, 0),
                                child: ReusableText(
                                  text: "Sun, Sep 11, 1:00 PM",
                                  style: appstyle(
                                      14, Color(kDark.value), FontWeight.w400),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ReusableText(
                                  text: "Check out",
                                  style: appstyle(14, Color(kDarkGrey.value),
                                      FontWeight.w400),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 0, 16, 0),
                                  child: ReusableText(
                                    text: "Tue, Sep 13, 12:00 PM",
                                    style: appstyle(14, Color(kDark.value),
                                        FontWeight.w400),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    HeightSpacer(size: height * 0.015),
                    Divider(),
                    // titles
                    HeightSpacer(size: height * 0.015),
                    ReusableText(
                      text: "Address",
                      style:
                          appstyle(16, Color(kDarkGrey.value), FontWeight.w400),
                    ),
                    HeightSpacer(size: height * 0.015),
                    ReusableText(
                      text: "476, Minh Khai, Hai Ba Trung District, Hanoi,",
                      style: appstyle(14, Color(kDark.value), FontWeight.w400),
                    ),
                    HeightSpacer(size: height * 0.01),
                    ReusableText(
                      text: "Viet Nam",
                      style: appstyle(14, Color(kDark.value), FontWeight.w400),
                    ),
                    HeightSpacer(size: height * 0.01),
                    ReusableText(
                      text: "+84 909 090 909",
                      style:
                          appstyle(14, Color(kOrange.value), FontWeight.w400),
                    ),
                    Divider(
                      color: Colors.black,
                      indent: 0,
                      endIndent: 0,
                      height: height * 0.03,
                    ),
                    ReusableText(
                      text: "Reservation Detail",
                      style:
                          appstyle(16, Color(kDarkGrey.value), FontWeight.w400),
                    ),
                    HeightSpacer(size: height * 0.015),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ReusableText(
                          text: "Confirmation number: 98581885 ",
                          style:
                              appstyle(14, Color(kDark.value), FontWeight.w400),
                        ),
                      ],
                    ),

                    HeightSpacer(size: height * 0.01),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ReusableText(
                          text: "Sep 11 - 14 (3 Nights)",
                          style:
                              appstyle(14, Color(kDark.value), FontWeight.w400),
                        ),
                      ],
                    ),
                    HeightSpacer(size: height * 0.01),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ReusableText(
                          text: " 1 Room , 2 Guests",
                          style:
                              appstyle(14, Color(kDark.value), FontWeight.w400),
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

                    //done the total price
                    HeightSpacer(size: height * 0.015),
                    //additional charges
                    ReusableText(
                      text: "Room details",
                      style:
                          appstyle(17, Color(kDarkGrey.value), FontWeight.w400),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Container(
                        height: height * 0.44,
                        width: (1880 / 2280) * width,
                        child: Card(
                          margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                          clipBehavior: Clip.antiAlias,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(24)),
                          ),
                          child: Stack(
                            children: [
                              Ink.image(
                                image: const NetworkImage(
                                    "https://images.unsplash.com/photo-1578458329607-534298aebc4d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=700&q=80"),
                                height: (350 / 1080) * height,
                                width: width,
                                fit: BoxFit.cover,
                              ),
                              Positioned(
                                left: (20 / 1080) * height,
                                top: (365 / 1080) * height,
                                child: ReusableText(
                                  text: "Beautiful tree",
                                  style: appstyle(
                                      21, Color(kDark.value), FontWeight.w400),
                                ),
                              ),
                              Positioned(
                                left: (20 / 1080) * height,
                                top: (405 / 1080) * height,
                                child: ReusableText(
                                  text: "offc",
                                  style: appstyle(
                                      21, Color(kDark.value), FontWeight.w400),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    HeightSpacer(size: height * 0.0125),

                    //

                    // modify changes
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ReusableText(
                          text: "Cancel reservation",
                          style: appstyle(
                              17, Color(kDarkGrey.value), FontWeight.w400),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(14.0),
                          child: ElevatedButton(
                            onPressed: () {
                              Get.defaultDialog(
                                title: "Are you sure you want to hehe",
                                textConfirm: "Confirm",
                                textCancel: "Cancel",
                                confirmTextColor: Color(kDark.value),
                                onCancel: () {},
                                onConfirm: () {
                                  Get.to(() => const MainScreen());
                                },
                              );
                            },
                            child: Icon(Icons.arrow_forward_ios),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors
                                  .transparent, // Set the button background color to transparent
                              elevation: 0, // Remove the button shadow
                              padding: EdgeInsets
                                  .zero, // Remove default button padding
                              // Reduce the button's tap target size
                            ),
                          ),
                        ),
                      ],
                    ),
                    HeightSpacer(size: height * 0.0125),

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
                            text:
                                "You may cancel your reservation for no charge",
                            style: appstyle(
                                13, Color(kDark.value), FontWeight.w400),
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
                              "assess a fee of 420 USD if you must cancel after",
                          style:
                              appstyle(13, Color(kDark.value), FontWeight.w400),
                        ),
                        ReusableText(
                          text: "this deadline.",
                          style:
                              appstyle(13, Color(kDark.value), FontWeight.w400),
                        ),
                        HeightSpacer(size: height * 0.026),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
