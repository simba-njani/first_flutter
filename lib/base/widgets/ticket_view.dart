import 'package:first_app/base/res/styles/app_styles.dart';
import 'package:first_app/base/widgets/app_column_text_layout.dart';
import 'package:first_app/base/widgets/app_layoutbuilder_widget.dart';
import 'package:first_app/base/widgets/big_circle.dart';
import 'package:first_app/base/widgets/big_dot.dart';
import 'package:first_app/base/widgets/textstyle_forth.dart';
import 'package:first_app/base/widgets/textsytle_third.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.85,
      height: 189,
      child: Container(
        margin: const EdgeInsets.only(right: 16),
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
                      const TextStyleThird(
                        text: "Hre",
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
                      const TextStyleThird(text: "Mtre"),
                    ],
                  ),
                  //show departure and destination with icons
                  const SizedBox(
                    height: 3,
                  ),

                  Row(
                    children: [
                      const SizedBox(
                        width: 100,
                        child: TextStyleForth(text: "Mtre"),
                      ),
                      Expanded(child: Container()),
                      const SizedBox(
                        width: 100,
                        child: TextStyleForth(text: "1h 30m"),
                      ),
                      Expanded(child: Container()),
                      const SizedBox(
                        width: 100,
                        child: TextStyleForth(
                          text: "1h 30m",
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
              child: const Column(
                children: [
                  //show departure and destination with icons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppLayoutText(
                        topText: "17 June",
                        bottomText: "Date",
                        alignment: CrossAxisAlignment.start,
                      ),
                      AppLayoutText(
                        topText: "3rd",
                        bottomText: "Chllnge dAY",
                        alignment: CrossAxisAlignment.center,
                      ),
                      AppLayoutText(
                        topText: "3",
                        bottomText: "number",
                        alignment: CrossAxisAlignment.end,
                      ),
                    ],
                  ),
                  //show departure and destination with icons
                  SizedBox(
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
