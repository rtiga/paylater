import 'package:flutter/material.dart';


enum ScreenSize { verySmall, small, mediumSmall, medium, mediumLarge, large, extraLarge }

const double _breakPoint1 = 360.0;
const double _breakPoint2 = 480.0;
const double _breakPoint3 = 600.0;
const double _breakPoint4 = 840.0;
const double _breakPoint5 = 1024.0;
const double _breakPoint6 = 1980.0;


int screenSizeIndex(double width){
  return getScreenSizeIndex(getScreenSize(width));
}

ScreenSize getScreenSize(double width) {

  if (width < _breakPoint1) {
    return ScreenSize.verySmall;
  } else if (width >= _breakPoint1 && width <= _breakPoint2) {
    return ScreenSize.small;
  } else if (width >= _breakPoint2 && width <= _breakPoint3) {
    return ScreenSize.mediumSmall;
  } else if (width >= _breakPoint3 && width <= _breakPoint4) {
    return ScreenSize.medium;
  } else if (width >= _breakPoint4 && width <= _breakPoint5) {
    return ScreenSize.mediumLarge;
  } else if (width >= _breakPoint5 && width <= _breakPoint6) {
    return ScreenSize.large;
  } else if (width >= _breakPoint6) {
    return ScreenSize.extraLarge;
  } else {
    return ScreenSize.extraLarge;
  }
}

int getScreenSizeIndex(ScreenSize screen){

  int _idx;

  switch(screen){

    case ScreenSize.verySmall:
      _idx = 0;
      break;
    case ScreenSize.small:
      _idx = 1;
      break;
    case ScreenSize.mediumSmall:
      _idx = 2;
      break;
    case ScreenSize.medium:
      _idx = 3;
      break;
    case ScreenSize.mediumLarge:
      _idx = 4;
      break;
    case ScreenSize.large:
      _idx = 5;
      break;
    case ScreenSize.extraLarge:
      _idx = 6;
      break;
    default:
      _idx = 0;
      break;
  }

  return _idx;

}

// Get the proportionate height as per screen size
double getProportionateScreenHeight(double inputHeight, double screenHeight) {
  // 812 is the layout height that designer use
  return (inputHeight / 812.0) * screenHeight;
}

// Get the proportionate height as per screen size
double getProportionateScreenWidth(double inputWidth, double screenWidth) {
  // 375 is the layout width that designer use
  return (inputWidth / 375.0) * screenWidth;
}

