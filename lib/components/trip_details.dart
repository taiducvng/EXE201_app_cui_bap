import 'package:flutter/material.dart';
import 'package:metravel_demo1/constants/app_style.dart';
import 'package:metravel_demo1/constants/app_constants.dart';
import 'package:metravel_demo1/components/reusable_text.dart';

class TripResult extends StatelessWidget {
  const TripResult({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Padding(
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
                    "https://lh3.googleusercontent.com/p/AF1QipOc6sGUOljkSoQV_n7bkhkzwQnTM8i6tWl3RkwC=s680-w680-h510"),
                height: (350 / 1080) * height,
                width: width,
                fit: BoxFit.fill,
              ),
              Positioned(
                left: (20 / 1080) * height,
                top: (365 / 1080) * height,
                child: ReusableText(
                  text: "Nhà nghỉ Khang Khang",
                  style: appstyle(16, Color(kDark.value), FontWeight.w400),
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
                      style: appstyle(14, Color(kDark.value), FontWeight.w400),
                    ),
                    ReusableText(
                      text: "(1420 reviews)",
                      style: appstyle(14, Color(kDark.value), FontWeight.w200),
                    ),
                  ],
                ),
              ),
              Positioned(
                left: (20 / 1080) * height,
                top: (445 / 1080) * height,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ReusableText(
                      text: "350000 VND/ Night",
                      style: appstyle(18, Color(kDark.value), FontWeight.w400),
                    ),
                    SizedBox(
                      width: width * 0.05,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        //  Get.to(() => const HotelResultScreen());
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
                        'Currently verify',
                        style: TextStyle(
                          fontSize: 15,
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ReusableText(
                      text: 'Status checked! Please bring ',
                      style: appstyle(
                          14, Color(kLightPurple.value), FontWeight.w600),
                    ),
                    ReusableText(
                      text: 'the confirmation number to get your room ',
                      style: appstyle(
                          14, Color(kLightPurple.value), FontWeight.w600),
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
