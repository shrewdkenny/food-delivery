import 'package:flutter/material.dart';
import 'package:gino_food/helpers/carousel.dart';
import 'package:gino_food/helpers/dot_indicators.dart';
import 'package:gino_food/models/homepage_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final PageController _pageController = PageController(viewportFraction: 0.8);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildCarousel(_pageController, (index) {
          setState(() {
            _currentIndex = index;
          });
        }),
        buildDotsIndicator(_currentIndex),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.builder(
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
                childAspectRatio: 0.75,
              ),
              itemCount: items.length,
              itemBuilder: (context, index) {
                return buildGridItem(items[index]);
              },
            ),
          ),
        ),
      ],
    );
  }
}
