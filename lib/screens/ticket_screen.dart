import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_app/screens/ticket_view.dart';
import 'package:ticket_booking_app/utils/app_info_list.dart';
import 'package:ticket_booking_app/utils/app_layout.dart';
import 'package:ticket_booking_app/widgets/app_column_layout.dart';
import 'package:ticket_booking_app/widgets/app_layout_builder_widget.dart';
import 'package:ticket_booking_app/widgets/tickets_tabs.dart';

import '../utils/app_styles.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(
                vertical: AppLayout.getHeight(20),
                horizontal: AppLayout.getWidth(20)),
            children: [
              Gap(AppLayout.getHeight(40)),
              Text(
                "Tickets",
                style: Styles.headlineStyle1,
              ),
              Gap(AppLayout.getHeight(20)),
              const AppTicketTabs(
                  firstText: "Upcoming", secondText: "Previous"),
              Gap(AppLayout.getHeight(20)),
              Container(
                padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
                child: TicketView(
                  ticket: ticketList[0],
                  isColor: true,
                ),
              ),
              const SizedBox(
                height: 1,
              ),
              Container(
                color: Colors.white,
                margin:
                    EdgeInsets.symmetric(horizontal: AppLayout.getWidth(15)),
                padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getHeight(15),
                    vertical: AppLayout.getHeight(20)),
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnLayout(
                          firstText: "Flutter DB",
                          secondText: "passenger",
                          alignment: CrossAxisAlignment.start,
                        ),
                        AppColumnLayout(
                          firstText: "5221 478566",
                          secondText: "passport",
                          alignment: CrossAxisAlignment.end,
                        ),
                      ],
                    ),
                    Gap(
                      AppLayout.getHeight(20),
                    ),
                    const AppLayoutBuilderWidget(
                      sections: 10,
                      isColor: false,
                    ),
                    Gap(
                      AppLayout.getHeight(20),
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnLayout(
                          firstText: "123456 12345678",
                          secondText: "Number of E-ticket",
                          alignment: CrossAxisAlignment.start,
                        ),
                        AppColumnLayout(
                          firstText: "B5YR19",
                          secondText: "passports",
                          alignment: CrossAxisAlignment.end,
                        ),
                      ],
                    ),
                    Gap(AppLayout.getHeight(20)),
                    const AppLayoutBuilderWidget(
                      sections: 10,
                      isColor: false,
                    ),
                    Gap(
                      AppLayout.getHeight(20),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'images/visa.png',
                                  scale: 11,
                                ),
                                Text(
                                  ' *** 2462',
                                  style: Styles.headlineStyle3,
                                ),
                              ],
                            ),
                            const Gap(5),
                            Text(
                              'Payment method',
                              style: Styles.headlineStyle4,
                            ),
                          ],
                        ),
                        const AppColumnLayout(
                          firstText: "\$249.99",
                          secondText: "price",
                          alignment: CrossAxisAlignment.end,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 1,
                    ),
                    Gap(
                      AppLayout.getHeight(20),
                    ),
                  ],
                ),
              ),
              /*
              bar code generation code */
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(
                      AppLayout.getHeight(21),
                    ),
                    bottomRight: Radius.circular(
                      AppLayout.getHeight(21),
                    ),
                  ),
                ),
                margin: EdgeInsets.only(
                    left: AppLayout.getHeight(15),
                    right: AppLayout.getHeight(15)),
                padding: EdgeInsets.all(AppLayout.getHeight(15)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(
                    AppLayout.getHeight(14),
                  ),
                  child: BarcodeWidget(
                    data: 'https://github.com/mohammaddanishcoder',
                    barcode: Barcode.code128(),
                    drawText: false,
                    color: Styles.textColor,
                    height: 70,
                    width: double.infinity,
                  ),
                ),
              ),
              Gap(AppLayout.getHeight(20)),
              Container(
                padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
                child: TicketView(
                  ticket: ticketList[0],
                  isColor: null,
                ),
              ),
            ],
          ),
          Positioned(
            left: AppLayout.getWidth(22),
            top: AppLayout.getHeight(295),
            child: Container(
              padding: EdgeInsets.all(AppLayout.getHeight(3)),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Styles.textColor,width: 2)
              ),
              child: CircleAvatar(
                maxRadius:4,
                backgroundColor:Styles.textColor,
              ),
            ),
          ),
          Positioned(
            right: AppLayout.getHeight(22),
            top: AppLayout.getHeight(295),
            child: Container(
              padding: EdgeInsets.all(AppLayout.getHeight(3)),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Styles.textColor,width: 2)
              ),
              child: CircleAvatar(
                maxRadius:4,
                backgroundColor:Styles.textColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
