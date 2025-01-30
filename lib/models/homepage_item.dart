import 'package:flutter/material.dart';
import 'package:gino_food/utils/images.dart';
import 'package:gino_food/utils/colors.dart';
import 'package:gino_food/utils/sizes.dart';

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
    padding: const EdgeInsets.all(
      10.0,
    ),
    decoration: BoxDecoration(
      color: MyColors.itemBackground,
      borderRadius: BorderRadius.circular(
        10.0,
      ),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Image.asset(
            item.image,
          ),
        ),
        // Item name
        Padding(
          padding: const EdgeInsets.only(top: 8.0, bottom: 4.0),
          child: Text(
            item.name,
            style: const TextStyle(
              color: MyColors.textPrimary,
              fontWeight: FontWeight.normal,
              fontSize: 16,
            ),
          ),
        ),
        // Row for price and add icon
        Row(
          children: [
            Text(
              "₦${item.price}",
              style: TextStyle(
                color: MyColors.priceColor,
                fontWeight: MySize.boldFontWeight,
              ),
            ),
            SizedBox(
              width: MySize.screenWidth * 0.2,
            ),
            Container(
              decoration: BoxDecoration(
                color: MyColors.secondary,
                borderRadius: BorderRadius.circular(2.0),
              ),
              child: const Center(
                child: Icon(
                  Icons.add,
                  color: MyColors.primaryColor,
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
