import 'package:first_app/base/res/styles/app_styles.dart';
import 'package:flutter/material.dart';

class AppDoubleText extends StatelessWidget {
  // ignore: use_super_parameters
  const AppDoubleText(
      {Key? key,
      required this.bigText,
      required this.smallText,
      required this.func})
      : super(key: key);
  final String bigText;
  final String smallText;
  final VoidCallback func;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          bigText,
          style: Appstyles.headLineStyle2,
        ),
        InkWell(
          onTap: func,
          child: Text(
            smallText,
            style: Appstyles.textStyle.copyWith(color: Appstyles.primaryColor),
          ),
        )
      ],
    );
  }
}
