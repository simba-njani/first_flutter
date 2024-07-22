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
  final bool? isColor;
  const TicketView(
      {super.key,
      required this.ticket,
      this.wholeScreen = false,
      this.isColor});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.85,
      height: 180,
      child: Container(
        margin: EdgeInsets.only(right: wholeScreen == true ? 0 : 16),
        child: Column(
          children: [
            //blue part of the ticket
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: isColor == null
                      ? Appstyles.ticketColorBlue
                      : Colors.white,
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
                        isColor: isColor,
                      ),
                      Expanded(child: Container()),
                      BigDot(
                        isColor: isColor,
                      ),
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
                                child: Icon(Icons.local_airport_rounded,
                                    color: isColor == null
                                        ? Colors.white
                                        : const Color(0xFFBACCF7))),
                          )
                        ],
                      )),
                      BigDot(
                        isColor: isColor,
                      ),
                      Expanded(child: Container()),
                      TextStyleThird(
                        text: ticket["to"]["code"],
                        isColor: isColor,
                      ),
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
                        child: TextStyleForth(
                            text: ticket["from"]["name"], isColor: isColor),
                      ),
                      Expanded(child: Container()),
                      SizedBox(
                        width: 100,
                        child: TextStyleForth(
                            text: ticket["flying_time"], isColor: isColor),
                      ),
                      Expanded(child: Container()),
                      SizedBox(
                        width: 100,
                        child: TextStyleForth(
                          text: ticket["to"]["name"],
                          isColor: isColor,
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
              color: isColor == null
                  ? Appstyles.ticketColorOrange
                  : Appstyles.ticketWhite,
              child: Row(
                children: [
                  BigCirlce(
                    isRight: false,
                    isColor: isColor,
                  ),
                  Expanded(
                      child: AppLayoutBuilder(
                    randomDivider: 16,
                    width: 6,
                    isColor: isColor,
                  )),
                  BigCirlce(
                    isRight: true,
                    isColor: isColor,
                  ),
                ],
              ),
            ),

            //orange part of the ticket
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: isColor == null
                      ? Appstyles.ticketColorOrange
                      : Appstyles.ticketWhite,
                  borderRadius: BorderRadius.only(
                      bottomLeft: isColor == null
                          ? const Radius.circular(21)
                          : const Radius.circular(0),
                      bottomRight: isColor == null
                          ? const Radius.circular(21)
                          : const Radius.circular(0))),
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
                        isColor: isColor,
                      ),
                      AppLayoutText(
                        topText: ticket["departure_time"],
                        bottomText: "Chllnge dAY",
                        alignment: CrossAxisAlignment.center,
                        isColor: isColor,
                      ),
                      AppLayoutText(
                        topText: ticket["number"].toString(),
                        bottomText: "number",
                        alignment: CrossAxisAlignment.end,
                        isColor: isColor,
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
