import 'package:flutter/material.dart';
import 'package:metravel_demo1/constants/app_style.dart';
import 'package:metravel_demo1/components/account_settings.dart';
import 'package:metravel_demo1/components/account_support.dart';
import 'package:metravel_demo1/components/trip_details.dart';
import 'package:metravel_demo1/constants/app_constants.dart';
import 'package:metravel_demo1/components/reusable_text.dart';



class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
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
                      text: "Account",
                      style: appstyle(24, Color(kDark.value), FontWeight.w400),
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
                          selectedTab = 0;
                          print(selectedTab);
                        });
                      },
                      child: ReusableText(
                        text: "Settings ",
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
                            selectedTab = 1;
                            // TripsClicked();
                            TripResult();
                            // print(selectedTab);
                          });
                        },
                        child: ReusableText(
                          text: "Support ",
                          style:
                              appstyle(16, Color(kDark.value), FontWeight.w400),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              //end of trips click view
              IndexedStack(
                index: selectedTab,
                children: <Widget>[
                  AccountSettinggScreen(),
                  AccountSupportScreen(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
