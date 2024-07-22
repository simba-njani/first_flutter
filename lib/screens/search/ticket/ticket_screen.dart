import 'package:barcode_widget/barcode_widget.dart';
import 'package:first_app/base/res/styles/app_styles.dart';
import 'package:first_app/base/res/styles/media.dart';
import 'package:first_app/base/utils/app_json.dart';
import 'package:first_app/base/widgets/app_column_text_layout.dart';
import 'package:first_app/base/widgets/app_layoutbuilder_widget.dart';
import 'package:first_app/base/widgets/ticket_view.dart';
import 'package:first_app/screens/search/ticket/widgets/ticket_position_circle.dart';
import 'package:first_app/screens/search/widgets/app_ticket_tabs.dart';
import 'package:flutter/material.dart';

class TicketViewScreen extends StatefulWidget {
  const TicketViewScreen({super.key});

  @override
  State<TicketViewScreen> createState() => _TicketViewScreenState();
}

class _TicketViewScreenState extends State<TicketViewScreen> {
  late int ticketIndex = 0;

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    if (ModalRoute.of(context)!.settings.arguments != null) {
      var args = ModalRoute.of(context)!.settings.arguments as Map;
      ticketIndex = args["index"];
    }

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appstyles.bgColor,
      appBar: AppBar(
        title: const Text("Tickets"),
        backgroundColor: Appstyles.bgColor,
      ),
      body: Stack(
        children: [
          ListView(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 0),
            children: [
              // const SizedBox(
              //   height: 40,
              // ),
              // Text(
              //   "Tickets",
              //   style: Appstyles.headLineStyle1,
              // ),
              // const SizedBox(
              //   height: 20,
              // ),
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
                    ticket: ticketList[ticketIndex],
                    isColor: true,
                    // isColor: true,
                  )),
              const SizedBox(
                height: 1,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 15),
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 29),
                color: Appstyles.ticketWhite,
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppLayoutText(
                          topText: "Flutter Test",
                          bottomText: "Passenger",
                          alignment: CrossAxisAlignment.start,
                          isColor: true,
                        ),
                        AppLayoutText(
                          topText: "9876543",
                          bottomText: "passport",
                          alignment: CrossAxisAlignment.end,
                          isColor: true,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const AppLayoutBuilder(
                      randomDivider: 15,
                      width: 5,
                      isColor: false,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppLayoutText(
                          topText: "24681013",
                          bottomText: "Nummber of E-ticket",
                          alignment: CrossAxisAlignment.start,
                          isColor: true,
                        ),
                        AppLayoutText(
                          topText: "369121518",
                          bottomText: "Booking Code",
                          alignment: CrossAxisAlignment.end,
                          isColor: true,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const AppLayoutBuilder(
                      randomDivider: 15,
                      width: 5,
                      isColor: false,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  AppMedia.visa,
                                  scale: 11,
                                ),
                                Text(
                                  "**** 2463",
                                  style: Appstyles.headLineStyle3,
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 1,
                            ),
                            Text(
                              "Payment method",
                              style: Appstyles.headLineStyle4,
                            )
                          ],
                        ),
                        const AppLayoutText(
                          topText: "\$299.99",
                          bottomText: "Price",
                          alignment: CrossAxisAlignment.end,
                          isColor: true,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 1,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 15),
                padding: const EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                    color: Appstyles.ticketWhite,
                    borderRadius: const BorderRadius.only(
                      bottomRight: Radius.circular(21),
                      bottomLeft: Radius.circular(21),
                    )),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: BarcodeWidget(
                      height: 70,
                      data: 'https://www.test.com',
                      barcode: Barcode.code128(),
                      drawText: false,
                      color: Appstyles.textColor,
                      width: double.infinity,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                  padding: const EdgeInsets.only(left: 16),
                  child: TicketView(
                    ticket: ticketList[ticketIndex],

                    // isColor: true,
                  )),
            ],
          ),
          const TicketPositionCirlce(
            pos: true,
          ),
          const TicketPositionCirlce(
            pos: null,
          ),
        ],
      ),
    );
  }
}
