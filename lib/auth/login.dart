import 'package:flutter/material.dart';
import 'package:gino_food/pages/homepage.dart';
import 'package:gino_food/utils/colors.dart';
import 'package:gino_food/utils/images.dart';
import 'package:gino_food/utils/sizes.dart';
import 'package:flutter/gestures.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: MySize.screenWidth * 0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: MySize.screenHeight * 0.1),
              // Centered logo
              Center(
                child: Image.asset(
                  MyImages.logo,
                  width: MySize.screenWidth * 0.25,
                  height: MySize.screenHeight * 0.09,
                ),
              ),
              SizedBox(height: MySize.screenHeight * 0.05),
              // Sign In text
              Text(
                "Sign In",
                style: TextStyle(
                  fontSize: MySize.boldTextSize,
                  fontWeight: MySize.boldFontWeight,
                ),
              ),
              SizedBox(height: MySize.screenHeight * 0.03),
              // Username field
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Username",
                  hintStyle: const TextStyle(color: MyColors.textPrimary),
                  prefixIcon: const Icon(Icons.person),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(height: MySize.screenHeight * 0.03),
              // Password field
              TextFormField(
                obscureText: _obscurePassword,
                decoration: InputDecoration(
                  hintText: "Password",
                  hintStyle: const TextStyle(color: MyColors.textPrimary),
                  prefixIcon: const Icon(Icons.lock),
                  suffixIcon: IconButton(
                    icon: Icon(
                      _obscurePassword
                          ? Icons.visibility_off
                          : Icons.visibility,
                    ),
                    onPressed: () {
                      setState(() {
                        _obscurePassword = !_obscurePassword;
                      });
                    },
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(height: MySize.screenHeight * 0.03),
              // Sign In button
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Homepage(),
                    ),
                  );
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
                  "Sign In",
                  style: TextStyle(
                    color: MyColors.primaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: MySize.screenHeight * 0.03),
              // Navigate to sign-up
              Center(
                child: RichText(
                  text: TextSpan(
                    text: "Don't have an account? ",
                    style: const TextStyle(color: Colors.black),
                    children: [
                      TextSpan(
                        text: "Sign Up",
                        style: const TextStyle(
                          color: MyColors.secondary,
                          fontWeight: FontWeight.bold,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.pushNamed(context, '/signUp');
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
