import 'package:first_app/base/res/styles/app_styles.dart';
import 'package:first_app/base/res/styles/media.dart';
import 'package:flutter/material.dart';

class Hotels extends StatelessWidget {
  const Hotels({super.key, required this.hotel});
  final Map<String, dynamic> hotel;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(right: 16),
      padding: const EdgeInsets.all(8.0),
      width: size.width * 0.6,
      height: 350,
      decoration: BoxDecoration(
        color: Appstyles.primaryColor,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
                color: Appstyles.primaryColor,
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/${hotel['image']}"))),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              hotel["place"],
              style:
                  Appstyles.headLineStyle1.copyWith(color: Appstyles.kakiColor),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              hotel["destination"],
              style: Appstyles.headLineStyle3.copyWith(color: Colors.white),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              "\$${hotel['price']}/per night",
              style:
                  Appstyles.headLineStyle1.copyWith(color: Appstyles.kakiColor),
            ),
          )
        ],
      ),
    );
  }
}
