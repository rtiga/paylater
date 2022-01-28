import 'package:flutter/material.dart';
import 'package:paylater_startup/util/colors.dart';
import 'package:paylater_startup/util/size_config.dart';


class SplashContent extends StatelessWidget {

  final String text;
  final String image;

  const SplashContent({Key? key, required this.text, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var screenSize = MediaQuery.of(context).size;

    return Column(
      children: <Widget>[
        const Spacer(),
        Text(
          "Pay Later",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(36,screenSize.width),
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          text,
          textAlign: TextAlign.center,
        ),
        const Spacer(flex: 2),
        Image.asset(
          image,
          height: getProportionateScreenHeight(265,screenSize.height),
          width: getProportionateScreenWidth(235,screenSize.width),
        ),
      ],
    );
  }
}
