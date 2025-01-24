import 'package:flutter/material.dart';
import 'package:gino_food/auth/login.dart';
import 'package:gino_food/auth/sign_up.dart';
import 'package:gino_food/onboarding/page_controller.dart';
import 'package:gino_food/pages/homepage.dart';

class AppRoutes {
  static const String onboarding = '/';
  static const String login = '/login';
  static const String signUp = '/signUp';
  static const String home = '/home';

  static Map<String, WidgetBuilder> getRoutes() {
    return {
      onboarding: (context) => const OnboardingScreen(),
      login: (context) => const LoginPage(),
      signUp: (context) => const SignUpPage(),
      home: (context) => const Homepage(),
    };
  }
}
