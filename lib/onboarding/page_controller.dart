import 'package:flutter/material.dart';
import 'package:gino_food/utils/sizes.dart';
import 'onboarding1.dart';
import 'onboarding2.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  OnboardingScreenState createState() => OnboardingScreenState();
}

class OnboardingScreenState extends State<OnboardingScreen> {
  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    MySize.init(context);

    return Scaffold(
      body: PageView(
        controller: pageController,
        children: [
          Onboarding1(pageController: pageController),
          Onboarding2(pageController: pageController),
        ],
      ),
    );
  }
}
