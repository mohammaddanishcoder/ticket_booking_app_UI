import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_app/widgets/double_text_widget.dart';
import 'package:ticket_booking_app/widgets/icon_text_widget.dart';
import 'package:ticket_booking_app/widgets/tickets_tabs.dart';
import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Colors.black12,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(20),
            vertical: AppLayout.getHeight(20)),
        children: <Widget>[
          Gap(AppLayout.getHeight(40)),
          Text(
            "What are \nyou looking for?",
            style: Styles.headlineStyle1
                .copyWith(fontSize: AppLayout.getHeight(35)),
          ),
          Gap(AppLayout.getHeight(20)),
          Container(
            padding: EdgeInsets.all(AppLayout.getHeight(3.5)),
            decoration: BoxDecoration(
                color: const Color(0xFFF4F6FD),
                borderRadius: BorderRadius.circular(
                  AppLayout.getHeight(50),
                )),
            child: const AppTicketTabs(firstText: "Airline Ticket",secondText: "Hotel",),
          ),
          Gap(AppLayout.getHeight(25)),
          const IconTextWidget(
            text: "Departure",
            icon: Icons.flight_takeoff_rounded,
          ),
          Gap(AppLayout.getHeight(20)),
          const IconTextWidget(
            text: "Arrival",
            icon: Icons.flight_land_rounded,
          ),
          Gap(AppLayout.getHeight(25)),
          Container(
            padding: EdgeInsets.symmetric(
              vertical: AppLayout.getHeight(12),
              horizontal: AppLayout.getWidth(12),
            ),
            decoration: BoxDecoration(
                color: const Color(0xD91130CE),
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    AppLayout.getHeight(5.0),
                  ),
                )),
            child: Center(
                child: Text(
              "Find Tickets",
              style: Styles.textStyle.copyWith(
                  color: Colors.white, fontSize: AppLayout.getHeight(19)),
            )),
          ),
          Gap(AppLayout.getHeight(35)),
          const DoubleTextWidget(
              bigText: "Upcoming Flights", smallText: "View All"),
          Gap(AppLayout.getHeight(15)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: AppLayout.getHeight(450),
                width: size.width * .42,
                padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getWidth(15),
                    vertical: AppLayout.getHeight(15)),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(20))),
                child: Column(
                  children: [
                    Container(
                      height: AppLayout.getHeight(100),
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(AppLayout.getHeight(12)),
                        image: const DecorationImage(
                            image: AssetImage("images/sit.jpg")),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.shade200,
                              blurRadius: 1,
                              spreadRadius: 1)
                        ],
                      ),
                    ),
                    Gap(AppLayout.getHeight(12)),
                    Text(
                      "20% discount on the early booking of this flight. Don't miss out the chance",
                      style: Styles.headlineStyle2,
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: size.width * .44,
                        height: AppLayout.getHeight(225),
                        decoration: BoxDecoration(
                          color: const Color(0xFF3AB8B8),
                          borderRadius:
                              BorderRadius.circular(AppLayout.getHeight(18)),
                        ),
                        padding: EdgeInsets.symmetric(
                            vertical: AppLayout.getHeight(15),
                            horizontal: AppLayout.getWidth(15)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Discount\nfor Survey",
                              style: Styles.headlineStyle2
                                  .copyWith(fontWeight: FontWeight.bold),
                            ),
                            Gap(AppLayout.getHeight(5)),
                            Text(
                              "Take the survey about our services and get discounts",
                              style: Styles.headlineStyle2.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                      Positioned(
                        right: AppLayout.getWidth(-30),
                        top: AppLayout.getHeight(-30),
                        child: Container(
                          padding: EdgeInsets.all(AppLayout.getHeight(30)),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  color: const Color(0xFF189999),
                                  width: AppLayout.getWidth(18))),
                        ),
                      )
                    ],
                  ),
                  Gap(AppLayout.getHeight(15)),
                  Container(
                    width: size.width * .44,
                    height: AppLayout.getHeight(210),
                    decoration: BoxDecoration(
                      color: const Color(0xFFEC6545),
                      borderRadius:
                          BorderRadius.circular(AppLayout.getHeight(18)),
                    ),
                    padding: EdgeInsets.symmetric(
                        vertical: AppLayout.getHeight(15),
                        horizontal: AppLayout.getWidth(15)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Text(
                            "Take Love",
                            style: Styles.headlineStyle2.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Gap(AppLayout.getHeight(5)),
                        RichText(text: const TextSpan(
                          children: [
                            TextSpan(
                              text: '😍',
                              style: TextStyle(fontSize: 35),
                            ),
                            TextSpan(
                              text: '🥰',
                              style: TextStyle(fontSize: 50),
                            ),
                            TextSpan(
                              text: '😘',
                              style: TextStyle(fontSize: 35),
                            ),
                          ]
                        ))
                      ],
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
