import 'package:flutter/material.dart';
import 'package:paylater_startup/util/colors.dart';
import 'package:paylater_startup/util/size_config.dart';

class DefaultButton extends StatelessWidget {
  final String text;
  final Function press;

  const DefaultButton({Key? key, required this.text, required this.press}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var screenSize = MediaQuery.of(context).size;

    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenHeight(56,screenSize.height),
      child: FlatButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        color: kPrimaryColor,
        onPressed: press(),
        child: Text(
          text,
          style: TextStyle(
            fontSize: getProportionateScreenWidth(18,screenSize.width),
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}