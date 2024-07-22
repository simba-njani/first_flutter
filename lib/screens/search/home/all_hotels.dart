import 'package:first_app/base/res/styles/app_styles.dart';
import 'package:first_app/base/utils/app_json.dart';
import 'package:first_app/routes/app_routes.dart';
import 'package:first_app/screens/search/home/widgets/hotel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AllHotels extends StatelessWidget {
  const AllHotels({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Appstyles.bgColor,
        appBar: AppBar(
          title: const Text("All Hotels"),
          backgroundColor: Appstyles.bgColor,
        ),
        body: Container(
          margin: const EdgeInsets.only(left: 8),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount:
                        2, //this determines how many you want on horizontal
                    crossAxisSpacing: 16.0,
                    mainAxisSpacing: 16.0,
                    childAspectRatio: 0.9),
                itemCount: hotelList.length,
                itemBuilder: (context, index) {
                  var singleHotel = hotelList[index];
                  return HotelGridView(hotel: singleHotel);
                }),
          ),
        )

        );
  }
}


class HotelGridView extends StatelessWidget {
  const HotelGridView({super.key, required this.hotel});
  final Map<String, dynamic> hotel;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(right: 8),
      padding: const EdgeInsets.all(8.0),
     // width: size.width * 0.6, 
     height: 350,
      decoration: BoxDecoration(
        color: Appstyles.primaryColor,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 1.2,
            child: Container(
              // height: 180,
              decoration: BoxDecoration(
                  color: Appstyles.primaryColor,
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/${hotel['image']}"))),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              hotel["place"],
              style:
                  Appstyles.headLineStyle3.copyWith(color: Appstyles.kakiColor),
            ),
          ),
         
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(
                  hotel["destination"],
                  style: Appstyles.headLineStyle3.copyWith(color: Colors.white),
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(
                  "\$${hotel['price']}/per night",
                  style:
                      Appstyles.headLineStyle4.copyWith(color: Appstyles.kakiColor),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

