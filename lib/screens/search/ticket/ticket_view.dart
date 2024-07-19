import 'package:first_app/base/res/styles/app_styles.dart';
import 'package:first_app/base/utils/app_json.dart';
import 'package:first_app/base/widgets/ticket_view.dart';
import 'package:first_app/screens/search/widgets/app_ticket_tabs.dart';
import 'package:flutter/material.dart';

class TicketViewScreen extends StatelessWidget {
  const TicketViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appstyles.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        children: [
          const SizedBox(
            height: 40,
          ),
          Text(
            "Tickets",
            style: Appstyles.headLineStyle1,
          ),
          const SizedBox(
            height: 20,
          ),
          const AppTicketTab(
            firstTab: "UPCOMING",
            secondTab: "PREVIOUS",
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.only(left: 16),
              child: TicketView(
            ticket: ticketList[0],
            // isColor: true,
          ))
        ],
      ),
    );
  }
}
