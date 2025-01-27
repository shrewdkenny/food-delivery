import 'package:flutter/material.dart';
import 'package:gino_food/helpers/carousel.dart';
import 'package:gino_food/helpers/dot_indicators.dart';
import 'package:gino_food/utils/colors.dart';
import 'package:gino_food/utils/images.dart';
import 'package:gino_food/utils/sizes.dart';
import 'package:gino_food/models/homepage_item.dart';

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
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(
          MySize.screenHeight * 0.05,
        ),
        child: AppBar(
          toolbarHeight: MySize.screenHeight * 0.05,
          automaticallyImplyLeading: false, // Prevent default leading padding
          leading: const Icon(
            Icons.menu,
            color: MyColors.menuColor,
          ),
          centerTitle: true,
          title: Image.asset(
            MyImages.homelogo,
            height: MySize.screenHeight * 0.04,
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
              padding: const EdgeInsets.only(
                right: 8.0,
              ),
              child: Image.asset(
                MyImages.profile,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Carousel
            buildCarousel(_pageController, (index) {
              setState(() {
                _currentIndex = index;
              });
            }),
            // Dots Indicator
            buildDotsIndicator(_currentIndex),
            // Grid of Items
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                shrinkWrap: true, // Allows GridView to fit the screen
                physics:
                    const NeverScrollableScrollPhysics(), // Prevents scrolling within the GridView
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Two items per row
                  crossAxisSpacing: 10.0, // Space between columns
                  mainAxisSpacing: 10.0, // Space between rows
                  childAspectRatio: 0.75, // Box aspect ratio
                ),
                itemCount: items.length, // Use the length of your items list
                itemBuilder: (context, index) {
                  return buildGridItem(items[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
