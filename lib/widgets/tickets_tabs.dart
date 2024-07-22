import 'package:flutter/material.dart';
import '../utils/app_layout.dart';

class AppTicketTabs extends StatelessWidget {
  final String firstText;
  final String secondText;

  const AppTicketTabs({super.key, required this.firstText, required this.secondText});

  @override
  Widget build(BuildContext context) {
    final size=AppLayout.getSize(context);
    return FittedBox(
      child: Row(
        children: [
          /*
                  Airline tickets
                   */
          Container(
            width: size.width * .44,
            padding:
            EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(
                      AppLayout.getHeight(50),
                    ),
                    bottomLeft:
                    Radius.circular(AppLayout.getHeight(50))),
                color: Colors.white),
            child: Center(child: Text(firstText)),
          ),
          /*
                  Hotels
                   */
          Container(
            width: size.width * .44,
            padding:
            EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(
                      AppLayout.getHeight(50),
                    ),
                    bottomRight:
                    Radius.circular(AppLayout.getHeight(50))),
                color: Colors.transparent),
            child: Center(child: Text(secondText)),
          )
        ],
      ),
    );
  }
}
