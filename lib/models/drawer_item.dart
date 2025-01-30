import 'package:flutter/material.dart';
import 'package:gino_food/pages/routes.dart';

class DrawerItem {
  final IconData icon;
  final String title;
  final String route;

  DrawerItem({
    required this.icon,
    required this.title,
    required this.route,
  });

  void onTap(BuildContext context) {
    Navigator.pop(context);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Navigator.pushNamed(context, route);
    });
  }
}

final List<DrawerItem> items = [
  DrawerItem(
    icon: Icons.history,
    title: "My Orders",
    route: AppRoutes.orders,
  ),
  DrawerItem(
    icon: Icons.person,
    title: "My Profile",
    route: AppRoutes.profile,
  ),
  DrawerItem(
    icon: Icons.wallet,
    title: "Fund Wallet",
    route: AppRoutes.fundwallet,
  ),
  DrawerItem(
    icon: Icons.location_on,
    title: "Delivery Address",
    route: AppRoutes.deliveryaddress,
  ),
  DrawerItem(
    icon: Icons.credit_card,
    title: "Payment Methods",
    route: AppRoutes.paymentmethod,
  ),
  DrawerItem(
    icon: Icons.headphones,
    title: "Contact Us",
    route: AppRoutes.contactus,
  ),
  DrawerItem(
    icon: Icons.settings,
    title: "Settings",
    route: AppRoutes.settings,
  ),
  DrawerItem(
    icon: Icons.support_agent,
    title: "Help & Support",
    route: AppRoutes.helpsupport,
  ),
];
