import 'package:flutter/material.dart';
import 'package:paylater_startup/home_page/category.dart';
import 'package:paylater_startup/home_page/promo_information.dart';

Widget HomeBody(double _width, double _height){
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("PROMOS", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),

        SizedBox(height: 10),

        promoInfo(_width, _height),

        SizedBox(height: 30),

        Text("CATEGORY", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),

        SizedBox(height: 10),

        categoryList(_width, _height),

        SizedBox(height: 30),

        Text("CATEGORY", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),

        SizedBox(height: 10),

      ],
    ),
  );
}