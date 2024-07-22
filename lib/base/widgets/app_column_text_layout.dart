import 'package:first_app/base/widgets/textstyle_forth.dart';
import 'package:first_app/base/widgets/textsytle_third.dart';
import 'package:flutter/material.dart';

class AppLayoutText extends StatelessWidget {
  final String topText;
  final String bottomText;
  final CrossAxisAlignment alignment;
  final bool? isColor;
  const AppLayoutText(
      {super.key,
      required this.topText,
      required this.bottomText,
      this.alignment = CrossAxisAlignment.start, this.isColor});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        TextStyleThird(text: topText, isColor: isColor,),
        const SizedBox(
          height: 5,
        ),
        TextStyleForth(text: bottomText, isColor: isColor,)
      ],
    );
  }
}
