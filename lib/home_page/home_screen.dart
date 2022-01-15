import 'package:flutter/material.dart';
import 'package:paylater_startup/home_page/header.dart';
import 'package:paylater_startup/home_page/home_body.dart';

Widget HomeScreen(double _width, double _height) {
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
    );
  }
