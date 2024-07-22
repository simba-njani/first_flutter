import 'package:first_app/base/res/styles/app_styles.dart';
import 'package:flutter/material.dart';

class TextStyleForth extends StatelessWidget {
  final String text;
  final TextAlign align;
  final bool? isColor;
  const TextStyleForth(
      {super.key,
      required this.text,
      this.align = TextAlign.start,
      this.isColor});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: align,
      style: isColor == null
          ? Appstyles.headLineStyle4.copyWith(color: Colors.white)
          : Appstyles.headLineStyle4,
    );
  }
}
