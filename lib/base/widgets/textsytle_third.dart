import 'package:first_app/base/res/styles/app_styles.dart';
import 'package:flutter/material.dart';

class TextStyleThird extends StatelessWidget {
  final String text;
  final bool? isColor;
  const TextStyleThird({super.key, required this.text, this.isColor});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: isColor == null
          ? Appstyles.headLineStyle3.copyWith(color: Colors.white)
          : Appstyles.headLineStyle3,
    );
  }
}
