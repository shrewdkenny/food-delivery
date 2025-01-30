import 'package:flutter/material.dart';
import 'package:gino_food/auth/login.dart';
import 'package:gino_food/auth/sign_up.dart';
import 'package:gino_food/onboarding/page_controller.dart';
import 'package:gino_food/pages/bottom_navigation/cart_page.dart';
import 'package:gino_food/pages/bottom_navigation/category_page.dart';
import 'package:gino_food/pages/bottom_navigation/favorite_page.dart';
import 'package:gino_food/pages/bottom_navigation/home.dart';
import 'package:gino_food/pages/drawer/contact_us.dart';
import 'package:gino_food/pages/drawer/delivery_address.dart';
import 'package:gino_food/pages/drawer/fund_wallet.dart';
import 'package:gino_food/pages/drawer/help_support.dart';
import 'package:gino_food/pages/drawer/orders.dart';
import 'package:gino_food/pages/drawer/payment_methods.dart';
import 'package:gino_food/pages/drawer/profile.dart';
import 'package:gino_food/pages/drawer/settings.dart';
import 'package:gino_food/pages/main_page.dart';

class AppRoutes {
  static const String onboarding = '/';
  static const String mainPage = '/main';
  static const String login = '/login';
  static const String signUp = '/signUp';
  static const String home = '/home';
  static const String category = '/category';
  static const String favorite = '/favorite';
  static const String cart = '/cart';
  static const String contactus = '/contactus';
  static const String deliveryaddress = '/deliveryaddress';
  static const String fundwallet = '/fundwallet';
  static const String helpsupport = '/helpsupport';
  static const String orders = '/order';
  static const String paymentmethod = '/paymentmethod';
  static const String profile = '/profile';
  static const String settings = '/settings';

  static Map<String, WidgetBuilder> getRoutes() {
    return {
      onboarding: (context) => const OnboardingScreen(),
      login: (context) => const LoginPage(),
      signUp: (context) => const SignUpPage(),
      mainPage: (context) => const MainScreen(),
      home: (context) => const HomePage(),
      category: (context) => const CategoryPage(),
      favorite: (context) => const FavoritePage(),
      cart: (context) => const CartPage(),
      contactus: (context) => const ContactUsPage(),
      deliveryaddress: (context) => const DeliveryAddress(),
      fundwallet: (context) => const FundWalletPage(),
      helpsupport: (context) => const HelpAndSupportPage(),
      orders: (context) => const OrderPage(),
      paymentmethod: (context) => const PaymentMethodsPage(),
      profile: (context) => const ProfilePage(),
      settings : (context) => const SettingsPage(),
    };
  }
}
