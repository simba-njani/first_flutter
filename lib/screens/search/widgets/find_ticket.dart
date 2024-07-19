import 'package:first_app/base/res/styles/app_styles.dart';
import 'package:flutter/material.dart';

class FindTicket extends StatelessWidget {
  const FindTicket({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 18),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Appstyles.findTicketColor),
      child: Center(
        child: Text(
          "Find Tickets",
          style: Appstyles.textStyle.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
