import 'package:flutter/material.dart';
import 'package:metravel_demo1/components/bottom_bar_states.dart';
import 'package:metravel_demo1/constants/app_constants.dart';
import 'package:get/get.dart';
import 'package:metravel_demo1/constants/app_style.dart';
import 'package:metravel_demo1/components/height_spacer.dart';
import 'package:metravel_demo1/components/reusable_text.dart';
import 'package:metravel_demo1/VIews/select_hotel_result_bac_lieu.dart'
    show HotelResultScreenBacLieu;

class ResultScreenBacLieu extends StatefulWidget {
  // String? selectDate;
  const ResultScreenBacLieu({
    super.key,
    this.selectDate,
    this.guestAndRoom,
    this.dropdownValueForLocation,
    this.durations,
  });
  static const String routeName = '/result_screen_bac_lieu';

  final String? selectDate;
  final String? guestAndRoom;
  final String? dropdownValueForLocation;
  final int? durations;
  @override
  State<ResultScreenBacLieu> createState() => _ResultScreenBacLieuState();
}

class _ResultScreenBacLieuState extends State<ResultScreenBacLieu> {
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
    final String? lowestPrice = "155000 - 215000";
    final String? lowestPrice1 = "175000 - 250000";
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
                                  "https://lh3.googleusercontent.com/p/AF1QipM_KRC1QBLRUjtVR-mIw4TzGBVhL8Rj3JeVQ2dB=s680-w680-h510"),
                              height: (350 / 1080) * height,
                              width: width,
                              fit: BoxFit.fill,
                            ),
                            Positioned(
                              left: (20 / 1080) * height,
                              top: (365 / 1080) * height,
                              child: ReusableText(
                                text: "Nhà nghỉ Khang Khang",
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
                                    HotelResultScreenBacLieu.routeName,
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
                                style: appstyle(14, Color(kLightBlue.value),
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
                                  "https://lh3.googleusercontent.com/p/AF1QipPkzeCAQHkcU9Jkrp3bCVT5UvvVOnGPHfC10cFW=s680-w680-h510"),
                              height: (350 / 1080) * height,
                              width: width,
                              fit: BoxFit.fill,
                            ),
                            Positioned(
                              left: (20 / 1080) * height,
                              top: (365 / 1080) * height,
                              child: ReusableText(
                                text: "Nhà nghỉ Lê Minh ",
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
                                        "We have reached out all of 25 cheap rooms available in this hotel",
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
