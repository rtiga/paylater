import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:paylater_startup/util/colors.dart';

Widget balanceInformation (double _width, double _height){
  return Container(
    width: 300,
    height: 80,
    decoration: const BoxDecoration(
      color: kSecondaryColor,
      borderRadius: BorderRadius.all(Radius.circular(15)),
    ),

    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
            width: 150,
            height: 60,
            decoration: const BoxDecoration(
              border: Border(right: BorderSide(color: Colors.white)),
            ),

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      FaIcon(FontAwesomeIcons.wallet, size: 9, color: Colors.white),

                      SizedBox(width: 15),

                      Text("Account Balance", style: TextStyle(fontSize: 10, color: Colors.white)),
                    ],
                  ),

                SizedBox(height: 10),

                const Text("Rp.15.000.000", style: TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        SizedBox(
            width: 150,
            height: 60,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    FaIcon(FontAwesomeIcons.moneyBill, size: 9, color: Colors.white),

                    SizedBox(width: 15),

                    Text("PayLater Balance", style: TextStyle(fontSize: 10, color: Colors.white)),
                  ],
                ),

                SizedBox(height: 10),

                const Text("Rp.5.000.000", style: TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold)),
              ],
            ),
          ),
      ],
    ),
  );
}