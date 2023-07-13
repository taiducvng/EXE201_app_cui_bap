import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:metravel_demo1/constants/app_style.dart';
import 'package:metravel_demo1/VIews/book_now.dart';
import 'package:metravel_demo1/constants/app_constants.dart';
import 'package:metravel_demo1/components/height_spacer.dart';
import 'package:metravel_demo1/VIews/hotel_booking_screen.dart';
import 'package:metravel_demo1/components/reusable_text.dart';
import 'package:metravel_demo1/components/reusable_text_for_logo.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xFFeeedF2),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ReusableText(
                            text: "Good morning, ",
                            style: appstyle(16 + (width * 0.0025),
                                Color(kDarkGrey.value), FontWeight.w600)),
                        ReusableText(
                            text: "You have ",
                            style: appstyle(16 + (width * 0.0025),
                                Color(kDarkGrey.value), FontWeight.w600)),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ReusableText(
                            text: "Vu Duc Anh ",
                            style: appstyle(22 + (width * 0.0025),
                                Color(kvcl.value), FontWeight.w600)),
                        ReusableText(
                            text: "50000 points. ",
                            style: appstyle(16 + (width * 0.0025),
                                Color(kDark.value), FontWeight.w200)),
                      ],
                    ),
                  ],
                ),
              ),
              HeightSpacer(size: height * 0.035),
              Card(
                margin: const EdgeInsets.fromLTRB(14, 2, 14, 0),
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(28),
                ),
                child: Stack(
                  children: [
                    Ink.image(
                      image: const NetworkImage(
                          "https://images.unsplash.com/photo-1609412058473-c199497c3c5d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80"),
                      height: height * 0.45,
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                      bottom: height * 0.25,
                      right: (44 / 1080) * height,
                      left: (36 / 1080) * height,
                      child: ReusableText(
                          text: "It's time to",
                          style: appstyle(
                              32, Color(kLight.value), FontWeight.w500)),
                    ),
                    Positioned(
                      bottom: (200 / 1080) * height,
                      right: (44 / 1080) * height,
                      left: (36 / 1080) * height,
                      child: ReusableText(
                          text: "switch off",
                          style: appstyle(
                              32, Color(kOrange.value), FontWeight.w400)),
                    ),
                    Positioned(
                      bottom: (94 / 1080) * height,
                      right: (88 / 1080) * height,
                      left: (12 / 1080) * height,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 8),
                        decoration: BoxDecoration(
                          // color: Colors.white.withOpacity(0.8),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: ReusableTextForLogo(
                            text:
                                "Enjoy breakfast, bonus points and hotel credits. ",
                            style: appstyle(
                                20, Color(kLight.value), FontWeight.w300)),
                      ),
                    ),
                    Positioned(
                      bottom: (16 / 1080) * height,
                      right: (132 / 1080) * height,
                      left: (32 / 1080) * height,
                      child: Card(
                        margin: const EdgeInsets.fromLTRB(14, 2, 14, 0),
                        clipBehavior: Clip.antiAlias,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(28),
                        ),
                        child: ElevatedButton(
                          onPressed: () {
                            Get.to(() => const BookNow());
                          },
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 24, vertical: 12),
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: Text(
                            'Book Now',
                            style: TextStyle(
                              fontSize: 18,
                              color: Color(kDark.value),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              HeightSpacer(size: 0.025 * height),
              Card(
                margin: const EdgeInsets.fromLTRB(14, 2, 14, 8),
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(28),
                ),
                child: SizedBox(
                  height: (180 / 1080) * height,
                  child: Stack(
                    children: [
                      Positioned(
                        bottom: (105 / 1080) * height,
                        right: (58 / 1080) * height,
                        left: (60 / 1080) * height,
                        child: ReusableText(
                            text: "Location",
                            style: appstyle(
                                22, Color(kDark.value), FontWeight.w500)),
                      ),
                      Positioned(
                        bottom: (110 / 1080) * height,
                        right: (380 / 1080) * height,
                        left: (-59 / 1080) * height,
                        child: Image.asset(
                          'assets/images/location.png',
                          height: (40 / 1080) * height,
                        ),
                      ),
                      Positioned(
                        bottom: (109 / 1080) * height,
                        right: (314 / 1080) * height,
                        left: (265 / 1080) * height,
                        child: const Icon(
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
                          onTap: () {
                            Get.to(() => HotelBookingScreen());
                          },
                          child: ReusableText(
                            text: "Where next?",
                            style: appstyle(
                                18, Color(kDarkGrey.value), FontWeight.w500),
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
                            style: appstyle(
                                18, Color(kDarkGrey.value), FontWeight.w500),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(16),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: ReusableText(
                    text: "More for you",
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
                      padding: const EdgeInsets.all(16),
                      child: Container(
                        height: height * 0.44,
                        width: (2380 / 2280) * width,
                        child: Card(
                          margin: const EdgeInsets.fromLTRB(4, 2, 14, 0),
                          clipBehavior: Clip.antiAlias,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(24)),
                          ),
                          child: Stack(
                            children: [
                              Ink.image(
                                image:
                                    const AssetImage("assets/images/more.png"),
                                height: height * 0.44,
                                width: (2580 / 2280) * width,
                                fit: BoxFit.cover,
                              ),
                              Positioned(
                                left: (18 / 1080) * height,
                                top: (365 / 1080) * height,
                                child: ReusableText(
                                  text: "Resort relaxation await",
                                  style: appstyle(
                                      24, Color(kLight.value), FontWeight.w400),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(24),
                      child: Container(
                        height: height * 0.44,
                        width: (2380 / 2280) * width,
                        child: Card(
                          margin: const EdgeInsets.fromLTRB(4, 2, 14, 0),
                          clipBehavior: Clip.antiAlias,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(24)),
                          ),
                          child: Stack(
                            children: [
                              Ink.image(
                                image: const NetworkImage(
                                    "https://images.unsplash.com/photo-1642485159910-5f8c5c9659ef?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=687&q=80"),
                                height: height * 0.44,
                                width: (2580 / 2280) * width,
                                fit: BoxFit.cover,
                              ),
                              Positioned(
                                left: (32.5 / 1080) * height,
                                top: (355 / 1080) * height,
                                child: ReusableText(
                                  text: "A rewarded stay at ",
                                  style: appstyle(
                                      24, Color(kLight.value), FontWeight.w400),
                                ),
                              ),
                              Positioned(
                                left: (23.5 / 1080) * height,
                                top: (400 / 1080) * height,
                                child: ReusableText(
                                  text: " Renaissance Saigon",
                                  style: appstyle(
                                      24, Color(kLight.value), FontWeight.w400),
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
              // hehe

              Padding(
                padding: const EdgeInsets.only(
                  top: 14,
                  bottom: 8,
                  left: 18,
                ),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: ReusableText(
                    text: "Destinations to explore",
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
                      padding: const EdgeInsets.all(16),
                      child: Container(
                        height: 0.34 * height,
                        width: 0.4 * height,
                        child: Card(
                          margin: const EdgeInsets.fromLTRB(4, 2, 14, 0),
                          clipBehavior: Clip.antiAlias,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(24)),
                          ),
                          child: Stack(
                            children: [
                              Ink.image(
                                image: const NetworkImage(
                                    "https://images.unsplash.com/photo-1622974639335-172cf2c9aff5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=764&q=80"),
                                height: height * 0.45,
                                //width: width,
                                fit: BoxFit.cover,
                              ),
                              Positioned(
                                left: height * (22 / 1000),
                                top: height * 0.22,
                                child: ElevatedButton(
                                  onPressed: () {
                                    //  Get.to(() => const ResultScreen());
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors
                                        .transparent, // Set the button background color to transparent
                                    elevation: 0, // Remove the button shadow
                                    padding: EdgeInsets
                                        .zero, // Remove default button padding
                                    // Reduce the button's tap target size
                                  ),
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
                                  style: appstyle(
                                      21, Color(kLight.value), FontWeight.w400),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Container(
                        height: 0.34 * height,
                        width: 0.4 * height,
                        child: Card(
                          margin: const EdgeInsets.fromLTRB(4, 2, 14, 0),
                          clipBehavior: Clip.antiAlias,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(24)),
                          ),
                          child: Stack(
                            children: [
                              Ink.image(
                                image: const NetworkImage(
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
                                  style: appstyle(
                                      28, Color(kLight.value), FontWeight.w400),
                                ),
                              ),
                              Positioned(
                                left: height * (22 / 1000),
                                top: height * 0.29,
                                child: ReusableText(
                                  text: "Explore",
                                  style: appstyle(
                                      21, Color(kLight.value), FontWeight.w400),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Container(
                        height: 0.34 * height,
                        width: 0.4 * height,
                        child: Card(
                          margin: const EdgeInsets.fromLTRB(4, 2, 14, 0),
                          clipBehavior: Clip.antiAlias,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(24)),
                          ),
                          child: Stack(
                            children: [
                              Ink.image(
                                image: const NetworkImage(
                                    "https://lh3.googleusercontent.com/p/AF1QipNmfHkbTKXJOzq3XgRBOlDv7DGqsp6CBjky4xg=s680-w680-h510"),
                                height: height * 0.45,
                                //width: width,
                                fit: BoxFit.cover,
                              ),
                              Positioned(
                                left: height * (22 / 1000),
                                top: height * 0.22,
                                child: ReusableText(
                                  text: "Bac Lieu",
                                  style: appstyle(
                                      28, Color(kLight.value), FontWeight.w400),
                                ),
                              ),
                              Positioned(
                                left: height * (22 / 1000),
                                top: height * 0.29,
                                child: ReusableText(
                                  text: "Explore",
                                  style: appstyle(
                                      21, Color(kLight.value), FontWeight.w400),
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
                padding: const EdgeInsets.all(16),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: ReusableText(
                    text: "Featured offers",
                    style:
                        appstyle(18, Color(kDarkGrey.value), FontWeight.w400),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Container(
                  height: height * 0.50,
                  width: 1.45 * width,
                  child: Card(
                    margin: const EdgeInsets.fromLTRB(2, 0, 0, 0),
                    clipBehavior: Clip.antiAlias,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(28)),
                    ),
                    child: Stack(
                      children: [
                        Ink.image(
                          image: const NetworkImage(
                              "https://images.unsplash.com/photo-1540541338287-41700207dee6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80"),
                          height: height * 0.51,
                          width: 1.2 * width,
                          fit: BoxFit.cover,
                        ),
                        Positioned(
                          left: (18 / 1080) * height,
                          top: (365 / 1080) * height,
                          child: ReusableText(
                            text: "Enjoy daily breakfast and F&B ",
                            style: appstyle(
                                19.5, Color(kLight.value), FontWeight.w800),
                          ),
                        ),
                        Positioned(
                          left: (18 / 1080) * height,
                          top: (410 / 1080) * height,
                          child: ReusableText(
                            text: "credit ",
                            style: appstyle(
                                19.5, Color(kLight.value), FontWeight.w800),
                          ),
                        ),
                        Positioned(
                          left: (18 / 1080) * height,
                          top: (460 / 1080) * height,
                          child: ReusableText(
                            text: "Luxvoy Phu Quoc Resort ",
                            style: appstyle(
                                19.5, Color(kLight.value), FontWeight.w500),
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
      ),
    );
  }
}
