import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:paylater_startup/util/colors.dart';

Widget productTemplate (double _width, double _height) {
  return Container(
    margin: EdgeInsets.fromLTRB(5, 20, 15, 30),
    child: Container(
      width: 180,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(15)),
        boxShadow: [
          BoxShadow(
            color: kSecondaryColor.withOpacity(0.2),
            blurRadius: 6,
            offset: const Offset(0, 2),
          )],
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Stack(
              children: [
                Container(
                  width: 160,
                  height: 160,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.5),
                    borderRadius: const BorderRadius.all(Radius.circular(15)),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 150,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Product Name", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                      Row(
                        children: const [
                          FaIcon(FontAwesomeIcons.solidStar, color: kPrimaryColor, size: 11),
                          Text("5.0", style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  const Text("Brand", style: TextStyle(fontSize: 9, fontStyle: FontStyle.italic)),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Harga", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                      FaIcon(FontAwesomeIcons.heart, size: 13, color: kTextColor),
                  ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}