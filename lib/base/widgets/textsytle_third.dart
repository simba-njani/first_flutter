import 'package:first_app/base/res/styles/app_styles.dart';
import 'package:flutter/material.dart';

class TextStyleThird extends StatelessWidget {
  final String text;
  const TextStyleThird({super.key,required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Appstyles.headLineStyle3.copyWith(color: Colors.white),
    );
  }
}
