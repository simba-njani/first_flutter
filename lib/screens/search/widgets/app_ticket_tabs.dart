import 'package:flutter/material.dart';

class AppTicketTab extends StatelessWidget {
  const AppTicketTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Color(0xFFF4F6FD),
      ),
      child: const Row(children: [
        AppTabs(
          tabText: "Airline Tickets",
          tabBorder: false,
        ),
        AppTabs(
          tabText: "Hotels",
          tabBorder: true,
          tabColor: true,
        )
      ]),
    );
  }
}

class AppTabs extends StatelessWidget {
  const AppTabs({super.key, this.tabBorder = false, this.tabText = "", this.tabColor=false});
  final String tabText;
  final bool tabColor;
  final bool tabBorder;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(vertical: 7),
      width: size.width * 44,
      decoration: BoxDecoration(
          color: tabColor==false?Colors.white:Colors.transparent,
          borderRadius: tabBorder == false
              ? const BorderRadius.horizontal(left: Radius.circular(50))
              : const BorderRadius.horizontal(right: Radius.circular(50))),
      child: Center(child: Text(tabText)),
    );
  }
}
