import 'package:flutter/material.dart';
import 'package:paylater_startup/util/size_config.dart';

const scaffoldColor = Color(0xFFFAFAFA);
const kPrimaryColor = Color(0xFFFFCC66);
const kPrimaryLightColor = Color(0xFFFBF1DC);
const kSecondaryColor = Color(0xFF5E60CE);
const kSecondaryLightColor = Color(0xFFDFE0FE);
const kTextColor = Color(0xFF3A3A3A);
const kAnimationDuration = Duration(milliseconds: 200);

TextStyle headingStyle(double screenWidth){
  return TextStyle(
    fontSize: getProportionateScreenWidth(28,screenWidth),
    fontWeight: FontWeight.bold,
    color: Colors.black,
    height: 1.5,
  );
}
