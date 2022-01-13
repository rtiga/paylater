import 'package:flutter/material.dart';
import 'package:paylater_startup/home_screen/header.dart';

Widget HomeBody(double _width, double _height) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Wrap(
            children: [
              Header(_width, _height),
            ],
          ),
        ),
      ),
    );
  }
