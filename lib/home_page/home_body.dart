import 'package:flutter/material.dart';
import 'package:paylater_startup/home_page/category.dart';
import 'package:paylater_startup/home_page/promo_information.dart';
import 'package:paylater_startup/home_page/top_brands.dart';
import 'package:paylater_startup/util/colors.dart';
import 'package:paylater_startup/util/product_template.dart';

Widget HomeBody(double _width, double _height){
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 30),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("PROMOS", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),

        SizedBox(height: 10),

        promoInfo(_width, _height),

        SizedBox(height: 30),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text("CATEGORY", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
            Text("View All", style: TextStyle(fontSize: 10)),
          ],
        ),

        SizedBox(height: 10),

        categoryList(_width, _height),

        SizedBox(height: 30),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text("TOP BRANDS", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
            Text("View All", style: TextStyle(fontSize: 10)),
          ],
        ),

        SizedBox(height: 10),

        topBrands(_width, _height),

        SizedBox(height: 30),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text("MOST POPULAR", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
            Text("View All", style: TextStyle(fontSize: 10)),
          ],
        ),

        Container(
          height: _height*0.5,
          color: Colors.transparent,
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return productTemplate(_width, _height);
                }
            ),
          ),

        const SizedBox(height: 15),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text("TRENDING NOW", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
            Text("View All", style: TextStyle(fontSize: 10)),
          ],
        ),

        Container(
          height: _height*0.5,
          color: Colors.transparent,
          child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return productTemplate(_width, _height);
              }
          ),
        ),

        const SizedBox(height: 15),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text("SPECIAL PROMO", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
            Text("View All", style: TextStyle(fontSize: 10)),
          ],
        ),

        Container(
          height: _height*0.5,
          color: Colors.transparent,
          child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return productTemplate(_width, _height);
              }
          ),
        ),

      ],
    ),
  );
}