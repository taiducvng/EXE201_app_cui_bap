import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:metravel_demo1/components/height_spacer.dart';
import 'package:metravel_demo1/components/profile.dart';
import 'package:metravel_demo1/components/reusable_text.dart';
import 'package:metravel_demo1/components/reusable_text_for_logo.dart';
import 'package:metravel_demo1/constants/app_constants.dart';
import 'package:metravel_demo1/constants/app_style.dart';

import 'package:provider/provider.dart';

import '../VIews/login_provider.dart';
import '../VIews/onboard_screen.dart';
import 'no_trips.dart';


class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, this.text, required this.child, this.actions});
  final String? text;
  final Widget child;
  final List<Widget>? actions;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: const IconThemeData(),
      backgroundColor: Color(kLight.value),
      elevation: 0,
      automaticallyImplyLeading: false,
      leadingWidth: 70.w,
      leading: child,
      actions: actions,
      centerTitle: false,
      title: ReusableText(
          text: text ?? "",
          style: appstyle(16, Color(kDark.value), FontWeight.w600)),
    );
  }
}
