import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:metravel_demo1/constants/app_style.dart';
import 'package:metravel_demo1/components/reusable_text.dart';
import 'package:metravel_demo1/VIews/book_screen.dart';
import 'package:metravel_demo1/constants/app_constants.dart';
import 'package:metravel_demo1/components/height_spacer.dart';
import 'package:metravel_demo1/components/reusable_text_for_logo.dart';

import '../components/bottom_bar_states.dart';
import '../components/reusable_text.dart';
import '../components/search_places.dart';
import 'home_screen.dart';

class BookScreen extends StatefulWidget {
  const BookScreen({super.key});

  @override
  State<BookScreen> createState() => _BookScreenState();
}

class _BookScreenState extends State<BookScreen> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    BookScreen(),
    const Text("Trips"),
    const Text("Account"),
  ];
  void _onItemTapped(int index) {
    if (index == 0) {
      Get.off(() => MainScreen());
    } else {
      setState(() {
        _selectedIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(12),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors
                          .transparent, // Set the button background color to transparent
                      elevation: 0, // Remove the button shadow
                      padding: EdgeInsets.zero, // Remove default button padding
                      // Reduce the button's tap target size
                    ),
                    onPressed: () {
                      Get.to(() => const SearchPlacesForHotelScreen());
                    },
                    child: Card(
                      margin: EdgeInsets.fromLTRB(14, 2, 14, 8),
                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(28),
                      ),
                      child: SizedBox(
                        height: (180 / 1080) * height,
                        child: Stack(
                          children: [
                            Positioned(
                              bottom: (100 / 1080) * height,
                              right: (51 / 1080) * height,
                              left: (60 / 1080) * height,
                              child: ReusableText(
                                  text: "Location",
                                  style: appstyle(
                                      22, Color(kDark.value), FontWeight.w500)),
                            ),
                            Positioned(
                              bottom: (110 / 1080) * height,
                              right: (400 / 1080) * height,
                              left: (6 / 1080) * height,
                              child: Image.asset(
                                'assets/images/location.png',
                                height: (35 / 1080) * height,
                              ),
                            ),
                            Positioned(
                              bottom: (109 / 1080) * height,
                              right: (314 / 1080) * height,
                              left: (265 / 1080) * height,
                              child: Icon(
                                Icons.calendar_month,
                                color: Colors.orange,
                                size: 24.0,
                                semanticLabel:
                                    'Text to announce in accessibility modes',
                              ),
                            ),
                            Positioned(
                              bottom: (99 / 1080) * height,
                              right: (4 / 1080) * height,
                              left: (322 / 1080) * height,
                              child: ReusableText(
                                  text: "Dates",
                                  style: appstyle(
                                      22, Color(kDark.value), FontWeight.w500)),
                            ),
                            Positioned(
                              bottom: (48 / 1080) * height,
                              right: (8 / 1080) * height,
                              left: (30 / 1080) * height,
                              child: GestureDetector(
                                onTap: null,
                                child: ReusableText(
                                  text: "Where next?",
                                  style: appstyle(18, Color(kDarkGrey.value),
                                      FontWeight.w500),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: (48 / 1080) * height,
                              right: (4 / 1080) * height,
                              left: (274 / 1080) * height,
                              child: GestureDetector(
                                onTap: null,
                                child: ReusableText(
                                  text: "Select dates",
                                  style: appstyle(18, Color(kDarkGrey.value),
                                      FontWeight.w500),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(16),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: ReusableText(
                      text: "Hotel nearby",
                      style:
                          appstyle(18, Color(kDarkGrey.value), FontWeight.w400),
                    ),
                  ),
                ),
                // items in the hotel nearby
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(16),
                        child: Container(
                          height: height * 0.48,
                          width: (1880 / 2280) * width,
                          child: Card(
                            margin: EdgeInsets.fromLTRB(4, 2, 14, 0),
                            clipBehavior: Clip.antiAlias,
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(24)),
                            ),
                            child: Stack(
                              children: [
                                Ink.image(
                                  image: NetworkImage(
                                      "https://images.unsplash.com/photo-1571896349842-33c89424de2d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=880&q=80"),
                                  height: (350 / 1080) * height,
                                  width: width,
                                  fit: BoxFit.cover,
                                ),
                                Positioned(
                                  left: (20 / 1080) * height,
                                  top: (365 / 1080) * height,
                                  child: ReusableText(
                                    text: "Luxvoy Luxury Hotel",
                                    style: appstyle(21, Color(kDark.value),
                                        FontWeight.w400),
                                  ),
                                ),
                                Positioned(
                                  left: (20 / 1080) * height,
                                  top: (405 / 1080) * height,
                                  child: ReusableText(
                                    text: "South Sai Gon",
                                    style: appstyle(21, Color(kDark.value),
                                        FontWeight.w400),
                                  ),
                                ),
                                Positioned(
                                  left: (20 / 1080) * height,
                                  top: (455 / 1080) * height,
                                  child: ReusableText(
                                    text: "3.8 km",
                                    style: appstyle(14, Color(kDark.value),
                                        FontWeight.w300),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(16),
                        child: Container(
                          height: height * 0.48,
                          width: (1880 / 2280) * width,
                          child: Card(
                            margin: EdgeInsets.fromLTRB(4, 2, 14, 0),
                            clipBehavior: Clip.antiAlias,
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(24)),
                            ),
                            child: Stack(
                              children: [
                                Ink.image(
                                  image: NetworkImage(
                                      "https://images.unsplash.com/photo-1587213811864-46e59f6873b1?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1074&q=80"),
                                  height: (350 / 1080) * height,
                                  width: width,
                                  fit: BoxFit.cover,
                                ),
                                Positioned(
                                  left: (20 / 1080) * height,
                                  top: (365 / 1080) * height,
                                  child: ReusableText(
                                    text: "Luxvoy Hotel and",
                                    style: appstyle(21, Color(kDark.value),
                                        FontWeight.w400),
                                  ),
                                ),
                                Positioned(
                                  left: (20 / 1080) * height,
                                  top: (405 / 1080) * height,
                                  child: ReusableText(
                                    text: " Tower Sai Gon",
                                    style: appstyle(21, Color(kDark.value),
                                        FontWeight.w400),
                                  ),
                                ),
                                Positioned(
                                  left: (20 / 1080) * height,
                                  top: (455 / 1080) * height,
                                  child: ReusableText(
                                    text: "4.2 km",
                                    style: appstyle(14, Color(kDark.value),
                                        FontWeight.w300),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(16),
                        child: Container(
                          height: height * 0.48,
                          width: (1880 / 2280) * width,
                          child: Card(
                            margin: EdgeInsets.fromLTRB(4, 2, 14, 0),
                            clipBehavior: Clip.antiAlias,
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(24)),
                            ),
                            child: Stack(
                              children: [
                                Ink.image(
                                  image: NetworkImage(
                                      "https://images.unsplash.com/photo-1611151394056-319824d98c09?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1935&q=80"),
                                  height: (350 / 1080) * height,
                                  width: width,
                                  fit: BoxFit.cover,
                                ),
                                Positioned(
                                  left: (20 / 1080) * height,
                                  top: (365 / 1080) * height,
                                  child: ReusableText(
                                    text: "Luxvoy Hotel South Sai",
                                    style: appstyle(21, Color(kDark.value),
                                        FontWeight.w400),
                                  ),
                                ),
                                Positioned(
                                  left: (8 / 1080) * height,
                                  top: (405 / 1080) * height,
                                  child: ReusableText(
                                    text: "  Gon",
                                    style: appstyle(21, Color(kDark.value),
                                        FontWeight.w400),
                                  ),
                                ),
                                Positioned(
                                  left: (20 / 1080) * height,
                                  top: (455 / 1080) * height,
                                  child: ReusableText(
                                    text: "3.8 km",
                                    style: appstyle(14, Color(kDark.value),
                                        FontWeight.w300),
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
                Padding(
                  padding: EdgeInsets.all(16),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: ReusableText(
                      text: "Recently viewed",
                      style:
                          appstyle(18, Color(kDarkGrey.value), FontWeight.w400),
                    ),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(16),
                        child: Container(
                          height: height * 0.44,
                          width: (1880 / 2280) * width,
                          child: Card(
                            margin: EdgeInsets.fromLTRB(4, 2, 14, 0),
                            clipBehavior: Clip.antiAlias,
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(24)),
                            ),
                            child: Stack(
                              children: [
                                Ink.image(
                                  image: NetworkImage(
                                      "https://images.unsplash.com/photo-1578458329607-534298aebc4d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=700&q=80"),
                                  height: (350 / 1080) * height,
                                  width: width,
                                  fit: BoxFit.cover,
                                ),
                                Positioned(
                                  left: (20 / 1080) * height,
                                  top: (365 / 1080) * height,
                                  child: ReusableText(
                                    text: "Phu Quoc Beach,",
                                    style: appstyle(21, Color(kDark.value),
                                        FontWeight.w400),
                                  ),
                                ),
                                Positioned(
                                  left: (20 / 1080) * height,
                                  top: (405 / 1080) * height,
                                  child: ReusableText(
                                    text: "Luxvoy Collection",
                                    style: appstyle(21, Color(kDark.value),
                                        FontWeight.w400),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(16),
                        child: Container(
                          height: height * 0.44,
                          width: (1880 / 2280) * width,
                          child: Card(
                            margin: EdgeInsets.fromLTRB(4, 2, 14, 0),
                            clipBehavior: Clip.antiAlias,
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(24)),
                            ),
                            child: Stack(
                              children: [
                                Ink.image(
                                  image: NetworkImage(
                                      "https://images.unsplash.com/photo-1489659429806-4069d3fcde9a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1157&q=80"),
                                  height: (350 / 1080) * height,
                                  width: width,
                                  fit: BoxFit.cover,
                                ),
                                Positioned(
                                  left: (20 / 1080) * height,
                                  top: (365 / 1080) * height,
                                  child: ReusableText(
                                    text: "Ha Long Bay,Luxvoy",
                                    style: appstyle(21, Color(kDark.value),
                                        FontWeight.w400),
                                  ),
                                ),
                                Positioned(
                                  left: (20 / 1080) * height,
                                  top: (405 / 1080) * height,
                                  child: ReusableText(
                                    text: " Collection",
                                    style: appstyle(21, Color(kDark.value),
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
                Padding(
                  padding: EdgeInsets.only(
                    top: 14,
                    bottom: 8,
                    left: 18,
                  ),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: ReusableText(
                      text: "Featured destinations",
                      style:
                          appstyle(18, Color(kDarkGrey.value), FontWeight.w400),
                    ),
                  ),
                ),
                // second card below the desti...
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(16),
                        child: Container(
                          height: 0.34 * height,
                          width: 0.4 * height,
                          child: Card(
                            margin: EdgeInsets.fromLTRB(4, 2, 14, 0),
                            clipBehavior: Clip.antiAlias,
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(24)),
                            ),
                            child: Stack(
                              children: [
                                Ink.image(
                                  image: NetworkImage(
                                      "https://images.unsplash.com/photo-1622974639335-172cf2c9aff5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=764&q=80"),
                                  height: height * 0.45,
                                  //width: width,
                                  fit: BoxFit.cover,
                                ),
                                Positioned(
                                  left: height * (22 / 1000),
                                  top: height * 0.22,
                                  child: GestureDetector(
                                    onTap: null,
                                    child: ReusableText(
                                      text: "Ho Chi Minh City",
                                      style: appstyle(24, Color(kLight.value),
                                          FontWeight.w400),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: height * (22 / 1000),
                                  top: height * 0.29,
                                  child: ReusableText(
                                    text: "Explore",
                                    style: appstyle(21, Color(kLight.value),
                                        FontWeight.w400),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(16),
                        child: Container(
                          height: 0.34 * height,
                          width: 0.4 * height,
                          child: Card(
                            margin: EdgeInsets.fromLTRB(4, 2, 14, 0),
                            clipBehavior: Clip.antiAlias,
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(24)),
                            ),
                            child: Stack(
                              children: [
                                Ink.image(
                                  image: NetworkImage(
                                      "https://images.unsplash.com/photo-1547158291-06774526756c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=687&q=80"),
                                  height: height * 0.45,
                                  //width: width,
                                  fit: BoxFit.cover,
                                ),
                                Positioned(
                                  left: height * (22 / 1000),
                                  top: height * 0.22,
                                  child: ReusableText(
                                    text: "Hanoi",
                                    style: appstyle(28, Color(kLight.value),
                                        FontWeight.w400),
                                  ),
                                ),
                                Positioned(
                                  left: height * (22 / 1000),
                                  top: height * 0.29,
                                  child: ReusableText(
                                    text: "Explore",
                                    style: appstyle(21, Color(kLight.value),
                                        FontWeight.w400),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(16),
                        child: Container(
                          height: 0.34 * height,
                          width: 0.4 * height,
                          child: Card(
                            margin: EdgeInsets.fromLTRB(4, 2, 14, 0),
                            clipBehavior: Clip.antiAlias,
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(24)),
                            ),
                            child: Stack(
                              children: [
                                Ink.image(
                                  image: NetworkImage(
                                      "https://images.unsplash.com/photo-1574699404005-b6120622b1e7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=736&q=80"),
                                  height: height * 0.45,
                                  //width: width,
                                  fit: BoxFit.cover,
                                ),
                                Positioned(
                                  left: height * (22 / 1000),
                                  top: height * 0.22,
                                  child: ReusableText(
                                    text: "Ha Long",
                                    style: appstyle(28, Color(kLight.value),
                                        FontWeight.w400),
                                  ),
                                ),
                                Positioned(
                                  left: height * (22 / 1000),
                                  top: height * 0.29,
                                  child: ReusableText(
                                    text: "Explore",
                                    style: appstyle(21, Color(kLight.value),
                                        FontWeight.w400),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(16),
                        child: Container(
                          height: 0.34 * height,
                          width: 0.4 * height,
                          child: Card(
                            margin: EdgeInsets.fromLTRB(4, 2, 14, 0),
                            clipBehavior: Clip.antiAlias,
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(24)),
                            ),
                            child: Stack(
                              children: [
                                Ink.image(
                                  image: NetworkImage(
                                      "https://images.unsplash.com/photo-1489259468140-b923f206c0d3?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80"),
                                  height: height * 0.45,
                                  //width: width,
                                  fit: BoxFit.cover,
                                ),
                                Positioned(
                                  left: height * (22 / 1000),
                                  top: height * 0.22,
                                  child: ReusableText(
                                    text: "Phu Quoc",
                                    style: appstyle(28, Color(kLight.value),
                                        FontWeight.w400),
                                  ),
                                ),
                                Positioned(
                                  left: height * (22 / 1000),
                                  top: height * 0.29,
                                  child: ReusableText(
                                    text: "Explore",
                                    style: appstyle(21, Color(kLight.value),
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
                Padding(
                  padding: EdgeInsets.only(
                    top: 14,
                    bottom: 8,
                    left: 18,
                  ),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: ReusableText(
                      text: "Explore Luxvoy",
                      style: appstyle(28, Color(kDark.value), FontWeight.w400),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 14,
                    bottom: 8,
                    left: 18,
                  ),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: ReusableText(
                      text: "Luxury",
                      style:
                          appstyle(18, Color(kDarkGrey.value), FontWeight.w400),
                    ),
                  ),
                ),
                // second card below the content...

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(16),
                        child: Container(
                          height: height * 0.34,
                          width: (1880 / 2280) * width,
                          child: Card(
                            margin: EdgeInsets.fromLTRB(4, 2, 14, 0),
                            clipBehavior: Clip.antiAlias,
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(24)),
                            ),
                            child: Stack(
                              children: [
                                Ink.image(
                                  image: NetworkImage(
                                      "https://images.unsplash.com/photo-1513584684374-8bab748fbf90?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1165&q=80"),
                                  height: 0.26 * height,
                                  width: width,
                                  fit: BoxFit.cover,
                                ),
                                Positioned(
                                  left: (85 / 1080) * height,
                                  top: (225 / 1080) * height,
                                  child: ReusableText(
                                    text: "Luxvoy Luxury",
                                    style: appstyle(21, Color(kLight.value),
                                        FontWeight.w400),
                                  ),
                                ),
                                Positioned(
                                  left: (20 / 1080) * height,
                                  top: (295 / 1080) * height,
                                  child: ReusableText(
                                    text: "Luxvoy Luxury Saigon",
                                    style: appstyle(21, Color(kDark.value),
                                        FontWeight.w400),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(16),
                        child: Container(
                          height: height * 0.34,
                          width: (1880 / 2280) * width,
                          child: Card(
                            margin: EdgeInsets.fromLTRB(4, 2, 14, 0),
                            clipBehavior: Clip.antiAlias,
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(24)),
                            ),
                            child: Stack(
                              children: [
                                Ink.image(
                                  image: AssetImage(
                                      "assets/images/Rectangle13.png"),
                                  height: 0.26 * height,
                                  width: width,
                                  fit: BoxFit.cover,
                                ),
                                Positioned(
                                  left: (85 / 1080) * height,
                                  top: (225 / 1080) * height,
                                  child: ReusableText(
                                    text: "Luxvoy Luxury",
                                    style: appstyle(21, Color(kLight.value),
                                        FontWeight.w400),
                                  ),
                                ),
                                Positioned(
                                  left: (20 / 1080) * height,
                                  top: (295 / 1080) * height,
                                  child: ReusableText(
                                    text: " Luxvoy Luxury Hanoi",
                                    style: appstyle(21, Color(kDark.value),
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
                Padding(
                  padding: EdgeInsets.only(
                    top: 14,
                    bottom: 8,
                    left: 18,
                  ),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: ReusableText(
                      text: "Premium",
                      style:
                          appstyle(18, Color(kDarkGrey.value), FontWeight.w400),
                    ),
                  ),
                ),
                // second card below the content...
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(16),
                        child: Container(
                          height: height * 0.4,
                          width: 0.87 * width,
                          child: Card(
                            margin: EdgeInsets.fromLTRB(4, 2, 14, 0),
                            clipBehavior: Clip.antiAlias,
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(24)),
                            ),
                            child: Stack(
                              children: [
                                Ink.image(
                                  image: AssetImage(
                                      "assets/images/Rectangle14.png"),
                                  height: 0.26 * height,
                                  width: width,
                                  fit: BoxFit.cover,
                                ),
                                Positioned(
                                  left: (85 / 1080) * height,
                                  top: (225 / 1080) * height,
                                  child: ReusableText(
                                    text: "Luxvoy Premium",
                                    style: appstyle(21, Color(kLight.value),
                                        FontWeight.w400),
                                  ),
                                ),
                                Positioned(
                                  left: (20 / 1080) * height,
                                  top: (295 / 1080) * height,
                                  child: ReusableText(
                                    text: "Luxvoy Premium ",
                                    style: appstyle(21, Color(kDark.value),
                                        FontWeight.w400),
                                  ),
                                ),
                                Positioned(
                                  left: (14 / 1080) * height,
                                  top: (348 / 1080) * height,
                                  child: ReusableText(
                                    text: " Saigon",
                                    style: appstyle(21, Color(kDark.value),
                                        FontWeight.w400),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(16),
                        child: Container(
                          height: height * 0.34,
                          width: (1880 / 2280) * width,
                          child: Card(
                            margin: EdgeInsets.fromLTRB(4, 2, 14, 0),
                            clipBehavior: Clip.antiAlias,
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(24)),
                            ),
                            child: Stack(
                              children: [
                                Ink.image(
                                  image: AssetImage(
                                      "assets/images/Rectangle15.png"),
                                  height: 0.26 * height,
                                  width: width,
                                  fit: BoxFit.cover,
                                ),
                                Positioned(
                                  left: (85 / 1080) * height,
                                  top: (225 / 1080) * height,
                                  child: ReusableText(
                                    text: "Luxvoy Luxury",
                                    style: appstyle(21, Color(kLight.value),
                                        FontWeight.w400),
                                  ),
                                ),
                                Positioned(
                                  left: (20 / 1080) * height,
                                  top: (295 / 1080) * height,
                                  child: ReusableText(
                                    text: " Luxvoy Premium Hanoi",
                                    style: appstyle(21, Color(kDark.value),
                                        FontWeight.w400),
                                  ),
                                ),
                                BottomNavigationBar(
                                  currentIndex: _selectedIndex,
                                  onTap: _onItemTapped,
                                  elevation: 10,
                                  showSelectedLabels: true,
                                  showUnselectedLabels: true,
                                  type: BottomNavigationBarType.shifting,
                                  selectedItemColor: Color(kDarkGrey.value),
                                  unselectedItemColor: const Color(0xFF526480),
                                  items: [
                                    BottomNavigationBarItem(
                                        icon: Icon(Icons.home), label: "Home"),
                                    BottomNavigationBarItem(
                                        icon: Icon(Icons.book), label: "Books"),
                                    BottomNavigationBarItem(
                                        icon: Icon(Icons.train),
                                        label: "Trips"),
                                    BottomNavigationBarItem(
                                        icon: Icon(Icons.manage_accounts),
                                        label: "Account"),
                                  ],
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
        ),
      ),
    );
  }
}
