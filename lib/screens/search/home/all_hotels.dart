import 'package:first_app/base/utils/app_json.dart';
import 'package:first_app/screens/search/home/widgets/hotel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AllHotels extends StatelessWidget {
  const AllHotels({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("All Hotels"),
      ),
      body: ListView(
        children: [
          SingleChildScrollView(
            child: Column(
              children: hotelList
                  .map((singleHotel) => Container(
                      margin: const EdgeInsets.only(bottom: 20),
                      child: Hotels(hotel: singleHotel)))
                  .toList(),
            ),
          )
        ],
      ),
    );
  }
}
