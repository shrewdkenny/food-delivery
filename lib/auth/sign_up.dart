import 'package:flutter/material.dart';
import 'package:gino_food/pages/routes.dart';
import 'package:gino_food/utils/colors.dart';
import 'package:gino_food/utils/constants.dart';
import 'package:gino_food/utils/images.dart';
import 'package:gino_food/utils/sizes.dart';
import 'package:flutter/gestures.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignUpPage> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    MySize.init(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: MySize.screenWidth * 0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MySize.screenHeight * 0.1,
              ),
              Center(
                child: Image.asset(
                  MyImages.logo,
                  width: MySize.screenWidth * 0.25,
                  height: MySize.screenHeight * 0.09,
                ),
              ),
              SizedBox(
                height: MySize.screenHeight * 0.05,
              ),
              Text(
                "Create Account",
                style: TextStyle(
                  fontSize: MySize.boldTextSize,
                  fontWeight: MySize.boldFontWeight,
                ),
              ),
              TextField(
                decoration: myTextFieldDecoration.copyWith(
                  hintText: 'Username',
                  hintStyle: const TextStyle(
                    color: MyColors.textPrimary,
                  ),
                  prefixIcon: const Icon(
                    Icons.supervised_user_circle_rounded,
                  ),
                ),
              ),
              TextField(
                decoration: myTextFieldDecoration.copyWith(
                  hintText: 'Full Name',
                  hintStyle: const TextStyle(
                    color: MyColors.textPrimary,
                  ),
                  prefixIcon: const Icon(
                    Icons.person_2,
                  ),
                ),
              ),
              TextField(
                decoration: myTextFieldDecoration.copyWith(
                  hintText: 'Phone Number',
                  hintStyle: const TextStyle(
                    color: MyColors.textPrimary,
                  ),
                  prefixIcon: const Icon(Icons.phone),
                ),
              ),
              TextField(
                decoration: myTextFieldDecoration.copyWith(
                  hintText: 'Email Address',
                  hintStyle: const TextStyle(
                    color: MyColors.textPrimary,
                  ),
                  prefixIcon: const Icon(
                    Icons.mail,
                  ),
                ),
              ),
              TextField(
                decoration: myTextFieldDecoration.copyWith(
                  hintText: 'Password',
                  hintStyle: const TextStyle(
                    color: MyColors.textPrimary,
                  ),
                  prefixIcon: const Icon(
                    Icons.lock,
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(
                      _obscureText
                          ? Icons.remove_red_eye
                          : Icons.visibility_off,
                    ),
                    onPressed: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                  ),
                ),
              ),
              TextField(
                decoration: myTextFieldDecoration.copyWith(
                  hintText: 'Confirm Password',
                  hintStyle: const TextStyle(
                    color: MyColors.textPrimary,
                  ),
                  prefixIcon: const Icon(
                    Icons.lock,
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(
                      _obscureText
                          ? Icons.remove_red_eye
                          : Icons.visibility_off,
                    ),
                    onPressed: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                  ),
                ),
              ),
              SizedBox(
                height: MySize.screenHeight * 0.03,
              ),
              ElevatedButton(
                onPressed: () {},
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
                child: Text(
                  "Create Account",
                  style: TextStyle(
                    color: MyColors.primaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: MySize.normalTextSize,
                  ),
                ),
              ),
              SizedBox(
                height: MySize.screenHeight * 0.03,
              ),
              Center(
                child: RichText(
                  text: TextSpan(
                    text: "Already have an account? ",
                    style: const TextStyle(
                      color: Colors.black,
                    ),
                    children: [
                      TextSpan(
                        text: "Sign in",
                        style: const TextStyle(
                          color: MyColors.secondary,
                          fontWeight: FontWeight.bold,
                        ),
                        // Add a gesture recognizer to link to the login page
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.pushNamed(
                              context,
                              AppRoutes.login,
                            );
                          },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
