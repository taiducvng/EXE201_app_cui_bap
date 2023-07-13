import 'package:flutter/material.dart';

class ReusableTextForLogo extends StatelessWidget {
  const ReusableTextForLogo(
      {super.key, required this.text, required this.style});

  final String text;
  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 2,
      softWrap: true,
      textAlign: TextAlign.center,
      overflow: TextOverflow.fade,
      style: style,
    );
  }
}
