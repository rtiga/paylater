import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:paylater_startup/product_description_page/desc_body.dart';
import 'package:paylater_startup/util/colors.dart';

class productDesc_screen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
        ),
      body: SafeArea(
        child: SizedBox(
            height: double.infinity,
            width: double.infinity,
          child: SingleChildScrollView(
              child: productDesc_body(_width, _height),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        width: double.infinity,
        height: _width*0.3,
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(25)),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 10,
              ),
            ]
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: Column(
            children: [
              Row(
                children: const [
                  FaIcon(FontAwesomeIcons.minusSquare, size: 18, color: kTextColor),
                  SizedBox(width: 15),
                  Text("1", style: TextStyle(fontSize: 15)),
                  SizedBox(width: 15),
                  FaIcon(FontAwesomeIcons.plusSquare, size: 18, color: kTextColor),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 156,
                    height: 35,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(5)),
                      color: Colors.white,
                      border: Border.all(color: kSecondaryColor),
                    ),
                    child: Center(
                      child: Text("ADD TO CART", style: TextStyle(fontSize: 15)),
                    ),
                  ),
                  SizedBox(width: 5),
                  Container(
                    width: 156,
                    height: 35,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(5)),
                      color: kSecondaryColor,
                    ),
                    child: Center(
                      child: Text("BUY NOW", style: TextStyle(fontSize: 15, color: Colors.white)),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
