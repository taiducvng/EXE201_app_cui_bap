import 'package:flutter/material.dart';
import 'package:metravel_demo1/components/bottom_bar_states.dart';
import 'package:metravel_demo1/constants/app_constants.dart';
import 'package:get/get.dart';
import 'package:metravel_demo1/constants/app_style.dart';
import 'package:metravel_demo1/components/height_spacer.dart';
import 'package:metravel_demo1/components/reusable_text.dart';
import 'package:metravel_demo1/VIews/select_hotel_result.dart';
import 'package:metravel_demo1/VIews/select_hotel_result_1.dart';

class ResultScreen extends StatefulWidget {
  // String? selectDate;
  const ResultScreen({
    super.key,
    this.selectDate,
    this.guestAndRoom,
    this.dropdownValueForLocation,
    this.durations,
  });
  static const String routeName = '/result_screen';

  final String? selectDate;
  final String? guestAndRoom;
  final String? dropdownValueForLocation;
  final int? durations;
  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
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
    // Access the selectDate and guestAndRoom values
// Retrieve the arguments
    final Map<String, dynamic>? arguments =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;

    // Access the selectDate and guestAndRoom values
    final String? selectDate = arguments?['selectDate'];
    final String? guestAndRoom = arguments?['guestAndRoom'];
    final String? dropdownValueForLocation =
        arguments?['dropdownValueForLocation'];
    final int? durations = arguments?['durations'];
    final String? lowestPrice = "325000 - 400000";
    final String? lowestPrice1 = "375000 - 400000";
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
                        padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
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
                  HeightSpacer(size: height * 0.03),
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
                              image: const NetworkImage(
                                  "https://images.unsplash.com/photo-1571896349842-33c89424de2d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=880&q=80"),
                              height: (350 / 1080) * height,
                              width: width,
                              fit: BoxFit.fill,
                            ),
                            Positioned(
                              left: (20 / 1080) * height,
                              top: (365 / 1080) * height,
                              child: ReusableText(
                                text: "Luxvoy Luxury Hotel South Saigon",
                                style: appstyle(
                                    16, Color(kDark.value), FontWeight.w400),
                              ),
                            ),
                            Positioned(
                              left: (20 / 1080) * height,
                              top: (405 / 1080) * height,
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Color(0xffFF9A03),
                                  ),
                                  ReusableText(
                                    text: "5.0 ",
                                    style: appstyle(14, Color(kDark.value),
                                        FontWeight.w400),
                                  ),
                                  ReusableText(
                                    text: "(1420 reviews)",
                                    style: appstyle(14, Color(kDark.value),
                                        FontWeight.w200),
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              left: (20 / 1080) * height,
                              top: (445 / 1080) * height,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  ReusableText(
                                    text: "$lowestPrice VND / Night",
                                    style: appstyle(14, Color(kDark.value),
                                        FontWeight.w400),
                                  ),
                                  SizedBox(
                                    width: width * 0.05,
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              left: (220 / 1080) * height,
                              top: (515 / 1080) * height,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context).pushNamed(
                                    HotelResultScreen.routeName,
                                    arguments: {
                                      'selectDate': selectDate,
                                      'guestAndRoom': guestAndRoom,
                                      'dropdownValueForLocation':
                                          dropdownValueForLocation,
                                      'durations': durations,
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
                                  'Select room',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Color(kLight.value),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: (20 / 1080) * height,
                              top: (505 / 1080) * height,
                              child: ReusableText(
                                text: "Lowest regular rate",
                                style: appstyle(14, Color(kLightGrey.value),
                                    FontWeight.w600),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  // content 1
                  HeightSpacer(size: 50),
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
                              image: const NetworkImage(
                                  "https://images.unsplash.com/photo-1587213811864-46e59f6873b1?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1074&q=80"),
                              height: (350 / 1080) * height,
                              width: width,
                              fit: BoxFit.fill,
                            ),
                            Positioned(
                              left: (20 / 1080) * height,
                              top: (365 / 1080) * height,
                              child: ReusableText(
                                text: "Hoan My Spa , Food and Hotel ",
                                style: appstyle(
                                    16, Color(kDark.value), FontWeight.w400),
                              ),
                            ),
                            Positioned(
                              left: (20 / 1080) * height,
                              top: (405 / 1080) * height,
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Color(0xffFF9A03),
                                  ),
                                  ReusableText(
                                    text: "5.0 ",
                                    style: appstyle(14, Color(kDark.value),
                                        FontWeight.w400),
                                  ),
                                  ReusableText(
                                    text: "(1420 reviews)",
                                    style: appstyle(14, Color(kDark.value),
                                        FontWeight.w200),
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              left: (20 / 1080) * height,
                              top: (445 / 1080) * height,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  ReusableText(
                                    text: "$lowestPrice VND / Night",
                                    style: appstyle(14, Color(kDark.value),
                                        FontWeight.w400),
                                  ),
                                  SizedBox(
                                    width: width * 0.05,
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              left: (220 / 1080) * height,
                              top: (515 / 1080) * height,
                              child: ElevatedButton(
                                onPressed: () {
                                  // Navigator.of(context).pushNamed(
                                  //   HotelResultScreen.routeName,
                                  //   arguments: {
                                  //     'selectDate': selectDate,
                                  //     'guestAndRoom': guestAndRoom,
                                  //     'dropdownValueForLocation':
                                  //         dropdownValueForLocation,
                                  //     'durations': durations,
                                  //   },
                                  // );
                                  Get.defaultDialog(
                                    title:
                                        "There is no currently available room",
                                    textCancel: "Ok",
                                    confirmTextColor: Color(kDark.value),
                                    onCancel: () {},
                                    middleText:
                                        "We have reached out all of 125 cheap rooms available in this hotel",
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
                                  'Select room',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Color(kLight.value),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: (20 / 1080) * height,
                              top: (505 / 1080) * height,
                              child: ReusableText(
                                text: "Lowest regular rate",
                                style: appstyle(14, Color(kLightGrey.value),
                                    FontWeight.w600),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  HeightSpacer(size: 20),
                  // third
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8, 16, 12, 0),
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
                              image: const NetworkImage(
                                  "https://images.unsplash.com/photo-1611151394056-319824d98c09?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=735&q=80"),
                              height: (320 / 1080) * height,
                              width: width,
                              fit: BoxFit.cover,
                            ),
                            Positioned(
                              left: (20 / 1080) * height,
                              top: (335 / 1080) * height,
                              child: ReusableText(
                                text: "Thong Nhat  Hotel and Tower Sai Gon",
                                style: appstyle(
                                    16, Color(kDark.value), FontWeight.w400),
                              ),
                            ),
                            Positioned(
                              left: (20 / 1080) * height,
                              top: (365 / 1080) * height,
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Color(0xffFF9A03),
                                  ),
                                  ReusableText(
                                    text: "5.0 ",
                                    style: appstyle(14, Color(kDark.value),
                                        FontWeight.w400),
                                  ),
                                  ReusableText(
                                    text: "(1420 reviews)",
                                    style: appstyle(14, Color(kDark.value),
                                        FontWeight.w200),
                                  ),
                                ],
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
                                    text: "$lowestPrice1 VND / Night",
                                    style: appstyle(14, Color(kDark.value),
                                        FontWeight.w400),
                                  ),
                                  SizedBox(
                                    width: width * 0.05,
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.of(context).pushNamed(
                                        HotelResultScreen1.routeName,
                                        arguments: {
                                          'selectDate': selectDate,
                                          'guestAndRoom': guestAndRoom,
                                          'dropdownValueForLocation':
                                              dropdownValueForLocation,
                                          'durations': durations,
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
                                text: "Lowest regular rate",
                                style: appstyle(14, Color(kLightGrey.value),
                                    FontWeight.w600),
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
