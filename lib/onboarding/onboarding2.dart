import 'package:flutter/material.dart';
import 'package:gino_food/auth/login.dart';
import 'package:gino_food/auth/sign_up.dart';
import 'package:gino_food/utils/colors.dart';
import 'package:gino_food/utils/images.dart';
import 'package:gino_food/utils/sizes.dart';
import 'package:gino_food/utils/texts.dart';

class Onboarding2 extends StatelessWidget {
  final PageController pageController;
  const Onboarding2({super.key, required this.pageController});

  @override
  Widget build(BuildContext context) {
    MySize.init(context);

    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(
          MyImages.thirdBackGround,
          fit: BoxFit.cover,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: MySize.screenHeight * 0.06,
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
              "Join Now",
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
              MyTexts.onboardingtext3,
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
                _buildDot(isActive: false),
                SizedBox(
                  width: MySize.screenWidth * 0.02,
                ),
                _buildDot(isActive: true),
              ],
            ),
            SizedBox(
              height: MySize.screenHeight * 0.1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Join
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignUpPage(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: MyColors.secondary,
                    fixedSize: Size(
                      MySize.screenWidth * 0.4,
                      MySize.screenHeight * 0.06,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text(
                    "Join",
                    style: TextStyle(
                      color: MyColors.primaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  width: MySize.screenWidth * 0.02,
                ),

                // sign in button
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginPage(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    fixedSize: Size(
                      MySize.screenWidth * 0.4,
                      MySize.screenHeight * 0.06,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: const BorderSide(
                        color: MyColors.secondary,
                      ),
                    ),
                  ),
                  child: const Text(
                    "Sign in",
                    style: TextStyle(
                      color: MyColors.secondary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            )
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
