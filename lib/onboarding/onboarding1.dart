import 'package:flutter/material.dart';
import 'package:gino_food/utils/colors.dart';
import 'package:gino_food/utils/images.dart';
import 'package:gino_food/utils/sizes.dart';
import 'package:gino_food/utils/texts.dart';

class Onboarding1 extends StatelessWidget {
  final PageController pageController;
  const Onboarding1({super.key, required this.pageController});

  @override
  Widget build(BuildContext context) {
    MySize.init(context); // Initialize the screen sizes

    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(
          MyImages.secondBackGround,
          fit: BoxFit.cover,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: MySize.screenHeight * 0.03,
            ),
            Image.asset(
              MyImages.logo,
              width: MySize.screenWidth * 0.4,
              height: MySize.screenHeight * 0.2,
            ),
            SizedBox(
              height: MySize.screenHeight * 0.1,
            ),
            Text(
              "Get To Know",
              style: TextStyle(
                color: MyColors.primaryColor,
                fontSize: MySize.boldTextSize,
                fontWeight: MySize.boldFontWeight,
              ),
            ),
            SizedBox(
              height: MySize.screenHeight * 0.03,
            ),
            Text(
              MyTexts.onboardingtext2,
              style: TextStyle(
                color: MyColors.primaryColor,
                fontSize: MySize.normalTextSize,
                fontWeight: MySize.normalFontWeight,
                letterSpacing: -0.5,
                height: 25.5 / 19.2,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: MySize.screenHeight * 0.05,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildDot(isActive: true),
                SizedBox(width: MySize.screenWidth * 0.02),
                _buildDot(isActive: false),
              ],
            ),
            SizedBox(
              height: MySize.screenHeight * 0.1,
            ),
            ElevatedButton(
              onPressed: () {
                // Ensure navigation occurs after the frame is built
                WidgetsBinding.instance.addPostFrameCallback((_) {
                  pageController.nextPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: MyColors.secondary,
                fixedSize: Size(
                  MySize.screenWidth * 0.9,
                  MySize.screenHeight * 0.06,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text(
                "Next",
                style: TextStyle(
                  color: MyColors.primaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildDot({required bool isActive}) {
    return Container(
      width: 10,
      height: 10,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isActive ? MyColors.secondary : MyColors.greyColor,
      ),
    );
  }
}
