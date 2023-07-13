import 'package:flutter/material.dart';
import 'package:metravel_demo1/constants/app_style.dart';
import 'package:metravel_demo1/components/reusable_text.dart';

class CustomOutlineBtn extends StatelessWidget {
  const CustomOutlineBtn({
    super.key,
    this.width,
    this.height,
    required this.text,
    this.OnTap,
    required this.color,
    required this.color2,
  });
  final double? width;
  final double? height;
  final String text;
  final void Function()? OnTap;
  final Color color;
  final Color color2;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: OnTap,
        child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            color: color2,
            border: Border.all(
              width: 1,
              color: color,
            ),
          ),
          child: Center(
            child: ReusableText(
                text: text, style: appstyle(16, color, FontWeight.w600)),
          ),
        ));
  }
}
