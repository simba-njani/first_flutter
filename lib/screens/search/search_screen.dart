import 'package:first_app/base/res/styles/app_styles.dart';
import 'package:first_app/base/res/styles/media.dart';
import 'package:first_app/base/widgets/app_double_text.dart';
import 'package:first_app/screens/search/widgets/app_text_icon.dart';
import 'package:first_app/screens/search/widgets/app_ticket_tabs.dart';
import 'package:first_app/screens/search/widgets/find_ticket.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Appstyles.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          const SizedBox(
            height: 40,
          ),
          Text(
            "what are\nyou looking for",
            style: Appstyles.headLineStyle1.copyWith(fontSize: 35),
          ),
          const SizedBox(
            height: 20,
          ),
          const AppTicketTab(),
          const SizedBox(
            height: 20,
          ),
          const AppTextIcon(
            icon: Icons.flight_takeoff_rounded,
            text: "Depature",
          ),
          const SizedBox(height: 20),
          const AppTextIcon(
            icon: Icons.flight_land_rounded,
            text: "Arravial",
          ),
          const SizedBox(height: 25),
          const FindTicket(),
          const SizedBox(height: 40),
          AppDoubleText(
            bigText: "Upcoming Flights",
            smallText: "view all",
            func: () {
              Navigator.pushNamed(context, "all_flights");
            },
          ),
          const SizedBox(height: 25),
          Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                width: size.width * 42,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade200,
                          blurRadius: 1,
                          spreadRadius: 1)
                    ]),
                child: Column(
                  children: [
                    Container(
                      height: 190,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: const DecorationImage(
                           fit: BoxFit.cover,
                            image: AssetImage(
                                AppMedia.planeSit)),
                      ),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
