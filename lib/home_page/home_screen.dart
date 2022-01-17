import 'package:flutter/material.dart';
import 'package:paylater_startup/home_page/bottom_bar.dart';
import 'package:paylater_startup/home_page/curved_bottomBar.dart';
import 'package:paylater_startup/home_page/header.dart';
import 'package:paylater_startup/home_page/home_body.dart';
import 'package:paylater_startup/util/colors.dart';

Widget homeScreen(double _width, double _height) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: _width,
          height: _height,
          child: SingleChildScrollView(
            child: Wrap(
              children: [
                Header(_width, _height),
                HomeBody(_width, _height),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: const bottomNavigationBar(),
    );
  }
