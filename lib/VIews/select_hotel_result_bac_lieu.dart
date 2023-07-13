import 'package:flutter/material.dart';
import 'package:metravel_demo1/components/bottom_bar_states.dart';
import 'package:metravel_demo1/VIews/confirm_booking_room_bac_lieu.dart';
import 'package:metravel_demo1/constants/app_constants.dart';
import 'package:get/get.dart';
import 'package:metravel_demo1/constants/app_style.dart';
import 'package:metravel_demo1/components/height_spacer.dart';
import 'package:metravel_demo1/components/reusable_text.dart';

class HotelResultScreenBacLieu extends StatefulWidget {
  static const String routeName = '/result_room_screen_bac_lieu';
  const HotelResultScreenBacLieu(
      {super.key,
      this.selectDate,
      this.guestAndRoom,
      this.dropdownValueForLocation,
      this.durations});
  final String? selectDate;
  final String? guestAndRoom;
  final String? dropdownValueForLocation;
  final int? durations;
  @override
  State<HotelResultScreenBacLieu> createState() =>
      _HotelResultScreenBacLieuState();
}

class _HotelResultScreenBacLieuState extends State<HotelResultScreenBacLieu> {
  void _onItemTapped(int index) {
    if (index == 0) {
      // If the index is 0 (Home icon), navigate to HomeScreen
      Get.off(() => MainScreen());
    } else {
      // For other icons, update the selected index
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    // Retrieve the arguments
    final Map<String, dynamic>? arguments =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;

    // Access the selectDate and guestAndRoom values
    num? bookPrice = 175000;
    final String? selectDate = arguments?['selectDate'];
    final String? guestAndRoom = arguments?['guestAndRoom'];
    final String? dropdownValueForLocation =
        arguments?['dropdownValueForLocation'];
    final int? durations = arguments?['durations'];
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        onTap: _onItemTapped,
        elevation: 10,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.shifting,
        selectedItemColor: Color(kDarkGrey.value),
        unselectedItemColor: const Color(0xFF526480),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.book), label: "Books"),
          BottomNavigationBarItem(icon: Icon(Icons.train), label: "Trips"),
          BottomNavigationBarItem(
              icon: Icon(Icons.manage_accounts), label: "Account"),
        ],
      ),
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
                        padding: EdgeInsets.fromLTRB(16, 16, 16, 16),
                        child: Icon(Icons.arrow_back_ios),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Column(
                          children: [
                            ReusableText(
                              text: dropdownValueForLocation.toString(),
                              style: appstyle(
                                  16, Color(kLightBlue.value), FontWeight.w400),
                            ),
                            ReusableText(
                              text: guestAndRoom.toString(),
                              style: appstyle(
                                  14, Color(kOrange.value), FontWeight.w400),
                            ),
                            ReusableText(
                              text: selectDate.toString() +
                                  '(' +
                                  durations.toString() +
                                  ' days)',
                              style: appstyle(
                                  16, Color(kLightBlue.value), FontWeight.w400),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  HeightSpacer(size: height * 0.015),
                  //titles
                  ReusableText(
                    text: "4 Room types available ",
                    style: appstyle(14, Color(kDark.value), FontWeight.w400),
                  ),
                  HeightSpacer(size: height * 0.015),
                  // content searched
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8, 0, 12, 0),
                    child: Container(
                      height: height * 0.54,
                      width: width,
                      child: Card(
                        margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                        clipBehavior: Clip.antiAlias,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(24)),
                        ),
                        child: Stack(
                          children: [
                            Ink.image(
                              image: NetworkImage(
                                "https://lh3.googleusercontent.com/p/AF1QipN7eegsUJbOuFOYGJmfsKoW5aIHwo4uH7f_yp21=s680-w680-h510",
                              ),
                              height: (350 / 1080) * height,
                              width: width,
                              fit: BoxFit.fill,
                            ),
                            Positioned(
                              left: (20 / 1080) * height,
                              top: (365 / 1080) * height,
                              child: ReusableText(
                                text: "1 bed, guest room, Non-smoking",
                                style: appstyle(
                                    16, Color(kDark.value), FontWeight.w400),
                              ),
                            ),
                            Positioned(
                              left: (20 / 1080) * height,
                              top: (405 / 1080) * height,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  ReusableText(
                                    text: "$bookPrice VND ",
                                    style: appstyle(18, Color(kDark.value),
                                        FontWeight.w400),
                                  ),
                                  SizedBox(
                                    width: width * 0.25,
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.of(context).pushNamed(
                                        ConfirmRoomBookingResultScreenBacLieu
                                            .routeName,
                                        arguments: {
                                          'selectDate': selectDate,
                                          'guestAndRoom': guestAndRoom,
                                          'dropdownValueForLocation':
                                              dropdownValueForLocation,
                                          'durations': durations,
                                          'bookPrice': bookPrice,
                                        },
                                      );
                                    },
                                    style: ElevatedButton.styleFrom(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 24, vertical: 12),
                                      backgroundColor: Colors.black,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(24),
                                      ),
                                    ),
                                    child: Text(
                                      'Select ',
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
                            Positioned(
                              left: (20 / 1080) * height,
                              top: (505 / 1080) * height,
                              child: ReusableText(
                                text: "Taxes and fees included",
                                style: appstyle(14, Color(kLightGrey.value),
                                    FontWeight.w400),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  // content 1
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8, 0, 12, 0),
                    child: Container(
                      height: height * 0.54,
                      width: width,
                      child: Card(
                        margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                        clipBehavior: Clip.antiAlias,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(24)),
                        ),
                        child: Stack(
                          children: [
                            Ink.image(
                              image:
                                  AssetImage("assets/images/Rectangle17.png"),
                              height: (350 / 1080) * height,
                              width: width,
                              fit: BoxFit.fill,
                            ),
                            Positioned(
                              left: (20 / 1080) * height,
                              top: (365 / 1080) * height,
                              child: ReusableText(
                                text: "1 bed, guest room, Non-smoking",
                                style: appstyle(
                                    16, Color(kDark.value), FontWeight.w400),
                              ),
                            ),
                            Positioned(
                              left: (20 / 1080) * height,
                              top: (405 / 1080) * height,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  ReusableText(
                                    text: "$bookPrice VND ",
                                    style: appstyle(18, Color(kDark.value),
                                        FontWeight.w400),
                                  ),
                                  SizedBox(
                                    width: width * 0.25,
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.of(context).pushNamed(
                                        ConfirmRoomBookingResultScreenBacLieu
                                            .routeName,
                                        arguments: {
                                          'selectDate': selectDate,
                                          'guestAndRoom': guestAndRoom,
                                          'dropdownValueForLocation':
                                              dropdownValueForLocation,
                                          'durations': durations,
                                          'bookPrice': bookPrice,
                                        },
                                      );
                                    },
                                    style: ElevatedButton.styleFrom(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 24, vertical: 12),
                                      backgroundColor: Colors.black,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(24),
                                      ),
                                    ),
                                    child: Text(
                                      'Select ',
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
                            Positioned(
                              left: (20 / 1080) * height,
                              top: (505 / 1080) * height,
                              child: ReusableText(
                                text: "Taxes and fees included",
                                style: appstyle(14, Color(kLightGrey.value),
                                    FontWeight.w400),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  //content 2
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8, 0, 12, 0),
                    child: Container(
                      height: height * 0.54,
                      width: width,
                      child: Card(
                        margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                        clipBehavior: Clip.antiAlias,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(24)),
                        ),
                        child: Stack(
                          children: [
                            Ink.image(
                              image: NetworkImage(
                                  "https://lh3.googleusercontent.com/p/AF1QipO3HZOCEt3WyGHlX5u-NMnsCMqvjS_8a9_J-sSq=s680-w680-h510"),
                              height: (350 / 1080) * height,
                              width: width,
                              fit: BoxFit.fill,
                            ),
                            Positioned(
                              left: (20 / 1080) * height,
                              top: (365 / 1080) * height,
                              child: ReusableText(
                                text: "1 bed, guest room, Non-smoking",
                                style: appstyle(
                                    16, Color(kDark.value), FontWeight.w400),
                              ),
                            ),
                            Positioned(
                              left: (20 / 1080) * height,
                              top: (405 / 1080) * height,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  ReusableText(
                                    text: "$bookPrice VND ",
                                    style: appstyle(18, Color(kDark.value),
                                        FontWeight.w400),
                                  ),
                                  SizedBox(
                                    width: width * 0.25,
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.of(context).pushNamed(
                                        ConfirmRoomBookingResultScreenBacLieu
                                            .routeName,
                                        arguments: {
                                          'selectDate': selectDate,
                                          'guestAndRoom': guestAndRoom,
                                          'dropdownValueForLocation':
                                              dropdownValueForLocation,
                                          'durations': durations,
                                          'bookPrice': bookPrice,
                                        },
                                      );
                                    },
                                    style: ElevatedButton.styleFrom(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 24, vertical: 12),
                                      backgroundColor: Colors.black,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(24),
                                      ),
                                    ),
                                    child: Text(
                                      'Select ',
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
                            Positioned(
                              left: (20 / 1080) * height,
                              top: (505 / 1080) * height,
                              child: ReusableText(
                                text: "Taxes and fees included",
                                style: appstyle(14, Color(kLightGrey.value),
                                    FontWeight.w400),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  // content 3
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8, 0, 12, 0),
                    child: Container(
                      height: height * 0.54,
                      width: width,
                      child: Card(
                        margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                        clipBehavior: Clip.antiAlias,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(24)),
                        ),
                        child: Stack(
                          children: [
                            Ink.image(
                              image: NetworkImage(
                                  "https://lh3.googleusercontent.com/p/AF1QipOc6sGUOljkSoQV_n7bkhkzwQnTM8i6tWl3RkwC=s680-w680-h510"),
                              height: (350 / 1080) * height,
                              width: width,
                              fit: BoxFit.fill,
                            ),
                            Positioned(
                              left: (20 / 1080) * height,
                              top: (365 / 1080) * height,
                              child: ReusableText(
                                text: "1 bed, guest room, Non-smoking",
                                style: appstyle(
                                    16, Color(kDark.value), FontWeight.w400),
                              ),
                            ),
                            Positioned(
                              left: (20 / 1080) * height,
                              top: (405 / 1080) * height,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  ReusableText(
                                    text: "$bookPrice VND ",
                                    style: appstyle(18, Color(kDark.value),
                                        FontWeight.w400),
                                  ),
                                  SizedBox(
                                    width: width * 0.25,
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.of(context).pushNamed(
                                        ConfirmRoomBookingResultScreenBacLieu
                                            .routeName,
                                        arguments: {
                                          'selectDate': selectDate,
                                          'guestAndRoom': guestAndRoom,
                                          'dropdownValueForLocation':
                                              dropdownValueForLocation,
                                          'durations': durations,
                                          'bookPrice': bookPrice,
                                        },
                                      );
                                    },
                                    style: ElevatedButton.styleFrom(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 24, vertical: 12),
                                      backgroundColor: Colors.black,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(24),
                                      ),
                                    ),
                                    child: Text(
                                      'Select ',
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
                            Positioned(
                              left: (20 / 1080) * height,
                              top: (505 / 1080) * height,
                              child: ReusableText(
                                text: "Taxes and fees included",
                                style: appstyle(14, Color(kLightGrey.value),
                                    FontWeight.w400),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
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
