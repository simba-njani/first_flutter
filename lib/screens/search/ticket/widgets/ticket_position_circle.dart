import 'package:first_app/base/res/styles/app_styles.dart';
import 'package:flutter/material.dart';

class TicketPositionCirlce extends StatelessWidget {
  final bool? pos;
  const TicketPositionCirlce({super.key, this.pos});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: pos==true?22:null,
      right: pos==true?null:22,
      top: 250,
      child: Container(
        padding: EdgeInsets.all(3),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(width: 2),
        ),
        child: CircleAvatar(
          backgroundColor: Appstyles.textColor,
          maxRadius: 4,
        ),
      ),
    );
  }
}
