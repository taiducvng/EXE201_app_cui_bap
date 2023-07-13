import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:metravel_demo1/components/height_spacer.dart';
import 'package:metravel_demo1/components/reusable_text.dart';
import 'package:metravel_demo1/constants/app_constants.dart';
import 'package:metravel_demo1/constants/app_style.dart';


class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Container(
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Icon(Icons.arrow_back_ios),
                  ),
                  ReusableText(
                    text: "Profile",
                    style: appstyle(16, Color(kDark.value), FontWeight.w400),
                  ),
                ],
              ),
              // done Profile titles
              Container(
                padding: EdgeInsets.only(left: 28.w),
                width: width,
                height: hieght! * 0.06,
                color: Color(kLightGrey.value),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: ReusableText(
                    text: "vuducanh@gmail.com",
                    style: appstyle(16, Color(kDark.value), FontWeight.w600),
                  ),
                ),
              ),
              HeightSpacer(size: 20),
              Container(
                padding: EdgeInsets.only(left: 28.w),
                width: width,
                height: hieght! * 0.06,
                color: Color(kLightGrey.value),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SvgPicture.asset(
                        "assets/images/vietnam.svg",
                        width: 20.w,
                        height: 20.h,
                      ),
                      ReusableText(
                        text: "+0912910120",
                        style:
                            appstyle(16, Color(kDark.value), FontWeight.w600),
                      ),
                    ],
                  ),
                ),
              ),
              HeightSpacer(size: 20),
              Container(
                color: Color(kLight.value),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.h),
                      child: ReusableText(
                        text: "Others information",
                        style:
                            appstyle(16, Color(kDark.value), FontWeight.w600),
                      ),
                    ),
                  ],
                ),
              ),
              HeightSpacer(size: 18),
              SizedBox(
                height: hieght! * 0.5,
                child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
                    child: ListView.builder(
                      itemCount: 5,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        final skill = skills[index];
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 10.w),
                            width: width,
                            height: hieght! * 0.06,
                            color: Color(kLight.value),
                            child: ReusableText(
                              text: skill,
                              style: appstyle(
                                  16, Color(kDark.value), FontWeight.w400),
                            ),
                          ),
                        );
                      },
                    )),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
