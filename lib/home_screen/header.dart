import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:paylater_startup/util/colors.dart';

Widget Header(double _width, double _height) {
  return Stack(
    alignment: Alignment.topCenter,
      children: [
        Container(
          width: _width,
          height: _height*0.6,
          decoration: const BoxDecoration(
            color: kPrimaryColor,
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50), bottomRight: Radius.circular(50)),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 30),
            const Text("LOGO DISINI", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30, fontFamily: 'Gilroy')),
            const SizedBox(height: 30),
            Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(5),
                  width: _width*0.5,
                  height: _height*0.06,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  child: const TextField(
                    style: TextStyle(fontSize: 14),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 25),
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      prefixIcon: Icon(Icons.search, color: Colors.black, size: 20),
                    ),
                  ),
                ),
                SizedBox(width: _width*0.08),
                Container(
                  padding: EdgeInsets.all(5),
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(Icons.message, color: Colors.black, size: 20),
                ),
                SizedBox(width: _width*0.01),
                Container(
                  padding: EdgeInsets.all(5),
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(Icons.notifications, color: Colors.black, size: 20),
                ),
                SizedBox(width: _width*0.01),
                Container(
                  padding: EdgeInsets.all(5),
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(Icons.favorite, color: Colors.black, size: 20),
                ),
              ],
            ),
            SizedBox(height: 30),
            Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      child: Icon(Icons.add, color: Colors.black, size: 20),
                    ),
                    SizedBox(height: 10),
                    Text("Pay", style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold, fontFamily: 'Josefin')),
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
  );
}