import 'package:first_app/base/res/styles/app_styles.dart';
import 'package:first_app/base/widgets/app_column_text_layout.dart';
import 'package:first_app/base/widgets/app_layoutbuilder_widget.dart';
import 'package:first_app/base/widgets/big_circle.dart';
import 'package:first_app/base/widgets/big_dot.dart';
import 'package:first_app/base/widgets/textstyle_forth.dart';
import 'package:first_app/base/widgets/textsytle_third.dart';
import 'package:flutter/material.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool wholeScreen;
  const TicketView({super.key, required this.ticket,  this.wholeScreen=false});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.85,
      height: 189,
      child: Container(
        margin:  EdgeInsets.only(right: wholeScreen==true?0:16),
        child: Column(
          children: [
            //blue part of the ticket
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: Appstyles.ticketColorBlue,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(21),
                      topRight: Radius.circular(21))),
              child: Column(
                children: [
                  //show departure and destination with icons
                  Row(
                    children: [
                      TextStyleThird(
                        text: ticket["from"]["code"],
                      ),
                      Expanded(child: Container()),
                      const BigDot(),
                      Expanded(
                          child: Stack(
                        children: [
                          const SizedBox(
                            height: 24,
                            child: AppLayoutBuilder(
                              randomDivider: 6,
                            ),
                          ),
                          Center(
                            child: Transform.rotate(
                                angle: 1.5,
                                child: const Icon(
                                  Icons.local_airport_rounded,
                                  color: Colors.white,
                                )),
                          )
                        ],
                      )),
                      const BigDot(),
                      Expanded(child: Container()),
                      TextStyleThird(text: ticket["to"]["code"]),
                    ],
                  ),
                  //show departure and destination with icons
                  const SizedBox(
                    height: 3,
                  ),

                  Row(
                    children: [
                      SizedBox(
                        width: 100,
                        child: TextStyleForth(text: ticket["from"]["name"]),
                      ),
                      Expanded(child: Container()),
                      SizedBox(
                        width: 100,
                        child: TextStyleForth(text: ticket["flying_time"]),
                      ),
                      Expanded(child: Container()),
                      SizedBox(
                        width: 100,
                        child: TextStyleForth(
                          text: ticket["to"]["name"],
                          align: TextAlign.end,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),

            //circles and dots
            Container(
              color: Appstyles.ticketColorOrange,
              child: const Row(
                children: [
                  BigCirlce(
                    isRight: false,
                  ),
                  Expanded(
                      child: AppLayoutBuilder(
                    randomDivider: 16,
                    width: 6,
                  )),
                  BigCirlce(
                    isRight: true,
                  ),
                ],
              ),
            ),

            //orange part of the ticket
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: Appstyles.ticketColorOrange,
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(21),
                      bottomRight: Radius.circular(21))),
              child: Column(
                children: [
                  //show departure and destination with icons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppLayoutText(
                        topText: ticket['date'],
                        bottomText: "Date",
                        alignment: CrossAxisAlignment.start,
                      ),
                      AppLayoutText(
                        topText: ticket["departure_time"],
                        bottomText: "Chllnge dAY",
                        alignment: CrossAxisAlignment.center,
                      ),
                      AppLayoutText(
                        topText: ticket["number"].toString(),
                        bottomText: "number",
                        alignment: CrossAxisAlignment.end,
                      ),
                    ],
                  ),
                  //show departure and destination with icons
                  const SizedBox(
                    height: 3,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
