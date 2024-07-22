import 'package:first_app/base/bottom_nav_bar.dart';
import 'package:first_app/routes/app_routes.dart';
import 'package:first_app/screens/search/home/all_hotels.dart';
import 'package:first_app/screens/search/home/all_ticket.dart';
import 'package:first_app/screens/search/ticket/ticket_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const BottomNavBar(),
      routes: {
        // "all_tickets": (context) => const AllTickets(),
        AppRoutes.allHotels: (context) => const AllHotels(),
        AppRoutes.allTickets:(context) => const AllTickets(),
        AppRoutes.ticketScreen:(context) => const TicketViewScreen()
      },
    );
  }
}
