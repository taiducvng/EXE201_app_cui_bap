import 'package:flutter/material.dart';
import 'package:metravel_demo1/components/reusable_text.dart';
import 'package:metravel_demo1/constants/app_constants.dart';
import 'package:metravel_demo1/constants/app_style.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text, this.color, this.onTap});
  final String text;
  final Color? color;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: Color(kDark.value),
        width: width,
        height: hieght! * 0.065,
        child: Center(
          child: ReusableText(
              text: text,
              style: appstyle(16, Color(kDarkGrey.value), FontWeight.w600)),
        ),
      ),
    );
  }
}
