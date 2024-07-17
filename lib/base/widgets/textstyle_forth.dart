import 'package:first_app/base/res/styles/app_styles.dart';
import 'package:flutter/material.dart';

class TextStyleForth extends StatelessWidget {
  final String text;
  final TextAlign align;
  const TextStyleForth({super.key, required this.text,  this.align=TextAlign.start});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: align,
      style: Appstyles.headLineStyle4.copyWith(color: Colors.white),
    );
  }
}
