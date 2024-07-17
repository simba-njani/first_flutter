import 'package:first_app/base/widgets/textsytle_third.dart';
import 'package:flutter/material.dart';

class AppLayoutText extends StatelessWidget {
  final String topText;
  final String bottomText;
  final CrossAxisAlignment alignment;
  const AppLayoutText(
      {super.key, required this.topText, required this.bottomText, this.alignment=CrossAxisAlignment.start});

  @override
  Widget build(BuildContext context) {
    return Column(

      crossAxisAlignment: alignment,
      children: [
        TextStyleThird(text: topText),
        const SizedBox(
          height: 5,
        ),
        TextStyleThird(text: bottomText)
      ],
    );
  }
}
