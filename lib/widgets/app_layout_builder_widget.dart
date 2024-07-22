
import 'package:flutter/material.dart';

import '../utils/app_layout.dart';

class AppLayoutBuilderWidget extends StatelessWidget {
  final bool? isColor;
  final int sections;
  const AppLayoutBuilderWidget({
    super.key,
    this.isColor, required this.sections,
  });



  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context,
          BoxConstraints constraints) {
        return Flex(
            mainAxisAlignment:
            MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            direction: Axis.horizontal,
            children: List.generate(
                (constraints.constrainWidth() / sections)
                    .floor(), (index) {
              return SizedBox(
                height: AppLayout.getHeight(1),
                width: AppLayout.getWidth(3),
                child: DecoratedBox(
                    decoration: BoxDecoration(
                        color: isColor==null?Colors.black:Colors.grey.shade300)),
              );
            }));
      },
    );
  }
}
