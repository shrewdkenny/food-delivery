import 'package:flutter/material.dart';
import 'package:gino_food/utils/images.dart';
import 'package:gino_food/utils/colors.dart';

class HomeItem {
  final String image;
  final String name;
  final String price;

  HomeItem({required this.image, required this.name, required this.price});
}

final List<HomeItem> items = [
  HomeItem(image: MyImages.tomatoes, name: "Ripe Tomato", price: "150"),
  HomeItem(image: MyImages.lettuce, name: "Lettuce", price: "200"),
  HomeItem(image: MyImages.bellpepper, name: "Bell Pepper", price: "500"),
  HomeItem(image: MyImages.chillipepper, name: "Chili Pepper", price: "200"),
  HomeItem(image: MyImages.onions, name: "Onions", price: "100"),
  HomeItem(image: MyImages.watermelon, name: "Watermelon", price: "200")
];

Widget buildGridItem(HomeItem item) {
  return Container(
    decoration: BoxDecoration(
      color: MyColors.itemBackground,
      borderRadius: BorderRadius.circular(10.0),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Image.asset(
            item.image,
            fit: BoxFit.cover,
          ),
        ),
        Text(
          item.name,
          style: const TextStyle(
            color: MyColors.textPrimary,
            fontWeight: FontWeight.normal,
            fontSize: 16,
          ),
        ),
        Text(
          "₦${item.price}",
          style: const TextStyle(
            color: MyColors.priceColor,
            fontSize: 14,
          ),
        ),
      ],
    ),
  );
}
