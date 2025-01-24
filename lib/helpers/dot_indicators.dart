import 'package:flutter/material.dart';
import 'package:gino_food/utils/colors.dart';

Widget buildDotsIndicator(int currentIndex) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: List.generate(3, (index) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5.0),
        child: Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: currentIndex == index
                ? MyColors.carouselColor
                : MyColors.greyColor,
          ),
        ),
      );
    }),
  );
}
