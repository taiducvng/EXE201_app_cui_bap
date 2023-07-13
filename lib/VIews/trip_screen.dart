import 'package:flutter/material.dart';
import 'package:metravel_demo1/constants/app_style.dart';
import 'package:metravel_demo1/components/trip_cancel.dart';
import 'package:metravel_demo1/components/trip_details.dart';
import 'package:metravel_demo1/constants/app_constants.dart';
import 'package:metravel_demo1/components/reusable_text.dart';

import '../components/no_trips.dart';

class TripScreen extends StatefulWidget {
  const TripScreen({super.key});

  @override
  State<TripScreen> createState() => _TripScreenState();
}

class _TripScreenState extends State<TripScreen> {
  int selectedTab = 0; // 0 for "Current", 1 for "Past"
  // void TripsClicked() {
  //   if (selectedTab == 0) {
  //     setState(() {
  //       TripResult();
  //     });
  //   } else if (selectedTab == 1) {
  //     //   TripResult();
  //   }
  // }
  // 0 for "Current", 1 for "Past",2 for "Cancelled"
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xFFeeedF2),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(28),
                child: Row(
                  children: [
                    ReusableText(
                      text: "Trips",
                      style: appstyle(24, Color(kDark.value), FontWeight.w600),
                    ),
                  ],
                ),
              ),
              //end of titles
              Padding(
                padding: EdgeInsets.fromLTRB(28, 16, 28, 16),
                child: Row(
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors
                            .transparent, // Set the button background color to transparent
                        elevation: 0, // Remove the button shadow
                        padding:
                            EdgeInsets.zero, // Remove default button padding
                        // Reduce the button's tap target size
                      ),
                      onPressed: () {
                        setState(() {
                          print(selectedTab);
                          selectedTab = 1;
                          print(selectedTab);
                        });
                      },
                      child: ReusableText(
                        text: "Current ",
                        style:
                            appstyle(16, Color(kOrange.value), FontWeight.w400),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors
                              .transparent, // Set the button background color to transparent
                          elevation: 0, // Remove the button shadow
                          padding:
                              EdgeInsets.zero, // Remove default button padding
                          // Reduce the button's tap target size
                        ),
                        onPressed: () {
                          setState(() {
                            selectedTab = 2;
                            // TripsClicked();
                            TripResult();
                            // print(selectedTab);
                          });
                        },
                        child: ReusableText(
                          text: "Past ",
                          style:
                              appstyle(16, Color(kDark.value), FontWeight.w400),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors
                            .transparent, // Set the button background color to transparent
                        elevation: 0, // Remove the button shadow
                        padding:
                            EdgeInsets.zero, // Remove default button padding
                        // Reduce the button's tap target size
                      ),
                      onPressed: () {
                        setState(() {
                          selectedTab = 3;
                          //  print(selectedTab);
                        });
                      },
                      child: ReusableText(
                        text: "Cancelled ",
                        style:
                            appstyle(16, Color(kDark.value), FontWeight.w400),
                      ),
                    ),
                  ],
                ),
              ),
              //end of trips click view
              IndexedStack(
                index: selectedTab,
                children: <Widget>[
                  TripResult(),
                  TripResult(), // Widget to display for "Current" tab
                  NoTrips(), // Widget to display for "Past" tab
                  TripResult1(), // Widget to display for "Cancelled" tab
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
