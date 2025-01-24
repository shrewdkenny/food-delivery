import 'package:flutter/material.dart';
import 'package:gino_food/helpers/carousel.dart';
import 'package:gino_food/helpers/dot_indicators.dart';
import 'package:gino_food/utils/colors.dart';
import 'package:gino_food/utils/images.dart';
import 'package:gino_food/utils/sizes.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _currentIndex = 0;
  final PageController _pageController = PageController(viewportFraction: 0.8);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.menu,
          color: MyColors.menuColor,
        ),
        centerTitle: true,
        title: Image.asset(
          MyImages.logo,
          height: MySize.screenHeight * 0.06,
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.search,
              color: MyColors.menuColor,
            ),
            onPressed: () {},
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Image.asset(MyImages.profile),
          ),
        ],
      ),
      body: Column(
        children: [
          // Carousel
          buildCarousel(_pageController, (index) {
            setState(() {
              _currentIndex = index;
            });
          }),
          // Dots Indicator
          buildDotsIndicator(_currentIndex),
        ],
      ),
    );
  }
}
