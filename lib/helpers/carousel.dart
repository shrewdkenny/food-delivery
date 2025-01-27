import 'package:flutter/material.dart';
import 'package:gino_food/utils/images.dart';
import 'package:gino_food/utils/sizes.dart';

Widget buildCarousel(
    PageController pageController, Function(int) onPageChanged) {
  return SizedBox(
    height: MySize.screenHeight * 0.2,
    width: double.infinity,
    child: PageView(
      controller: pageController,
      onPageChanged: (index) {
        onPageChanged(index);
      },
      children: [
        Image.asset(
          MyImages.banner,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 7.0),
          child: Image.asset(MyImages.banner),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 7.0),
          child: Image.asset(MyImages.banner),
        ),
      ],
    ),
  );
}
