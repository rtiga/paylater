import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:paylater_startup/util/colors.dart';

class curvedBottomBar extends StatefulWidget {
  const curvedBottomBar({Key? key}) : super(key: key);

  @override
  _curvedBottomBarState createState() => _curvedBottomBarState();
}

class _curvedBottomBarState extends State<curvedBottomBar> {
  @override
  Widget build(BuildContext context) {

    return CurvedNavigationBar(
        items: const <Widget>[
          FaIcon(FontAwesomeIcons.home, size: 20, color: kTextColor),
          FaIcon(FontAwesomeIcons.solidHeart, size: 20, color: kTextColor),
          FaIcon(FontAwesomeIcons.arrowUp, size: 20, color: kTextColor),
          FaIcon(FontAwesomeIcons.shoppingCart, size: 20, color: kTextColor),
          FaIcon(FontAwesomeIcons.user, size: 20, color: kTextColor),
    ],
      color: Colors.white,
      height: 60,
      buttonBackgroundColor: kPrimaryColor,
      backgroundColor: Colors.transparent,
      animationCurve: Curves.easeInOut,
      animationDuration: Duration(milliseconds: 300),
        );
  }
}
