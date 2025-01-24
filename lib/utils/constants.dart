import 'package:flutter/material.dart';
import 'package:gino_food/utils/colors.dart';

var myTextFieldDecoration = const InputDecoration(
  prefixIconColor: Color(0xFF32910F),
  contentPadding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
  border: UnderlineInputBorder(
    borderSide: BorderSide(
      color: MyColors.greyColor,
    ), // Default border color
  ),
  focusedBorder: UnderlineInputBorder(
    borderSide: BorderSide(
      color: MyColors.secondary,
      width: 2.0,
    ), // Custom color for focus state
  ),
  enabledBorder: UnderlineInputBorder(
    borderSide: BorderSide(
        color: MyColors.secondary,
        width: 2.0), // Custom color for enabled state
  ),
);
