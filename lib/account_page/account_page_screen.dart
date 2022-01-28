import 'package:flutter/material.dart';
import 'package:paylater_startup/account_page/body.dart';
import 'package:paylater_startup/home_page/bottom_bar.dart';

import 'header.dart';

class AccountPageScreen extends StatelessWidget {

  double width;
  double height;

  AccountPageScreen(this.width, this.height, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: width,
          height: height,
          child: SingleChildScrollView(
            child: Wrap(
              children: [
                Header(width, height),
                Body(width, height),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: const bottomNavigationBar(),
    );
  }
}
