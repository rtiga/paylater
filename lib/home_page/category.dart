import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:paylater_startup/util/colors.dart';

Widget categoryList(double _width, double _height) {
  List<categoryInformation> categoryData = [
    categoryInformation(title: "All Category", icon: const FaIcon(FontAwesomeIcons.star)),
    categoryInformation(title: "Food", icon: const FaIcon(FontAwesomeIcons.utensils)),
    categoryInformation(title: "Clothes", icon: const FaIcon(FontAwesomeIcons.tshirt)),
    categoryInformation(title: "Bags", icon: const FaIcon(FontAwesomeIcons.shoppingBag)),
    categoryInformation(title: "Make Up", icon: const FaIcon(FontAwesomeIcons.brush)),
    categoryInformation(title: "Shoes", icon: const FaIcon(FontAwesomeIcons.shoePrints)),
    categoryInformation(title: "Accessories", icon: const FaIcon(FontAwesomeIcons.ring)),
    categoryInformation(title: "Interior", icon: const FaIcon(FontAwesomeIcons.couch)),
    categoryInformation(title: "Mobile", icon: const FaIcon(FontAwesomeIcons.mobile)),
    categoryInformation(title: "Electronic", icon: const FaIcon(FontAwesomeIcons.tv)),
    categoryInformation(title: "Gaming", icon: const FaIcon(FontAwesomeIcons.gamepad)),
    categoryInformation(title: "Plants", icon: const FaIcon(FontAwesomeIcons.tree)),
  ];

  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
            child: SizedBox(
              height: 70,
              width: _width,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categoryData.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            width: 40,
                            height: 40,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: kPrimaryColor,
                            ),
                            child: Icon(categoryData[index].icon.icon, size: 13, color: Colors.white)
                        ),
                        const SizedBox(height: 5),
                        Text(categoryData[index].title, style: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold)),
                      ],
                    ),
                  );
                },
              ),
            ),
        ),
      ],
  );
}

class categoryInformation {
  String title;
  FaIcon icon;

categoryInformation({
  this.title="",
  this.icon = const FaIcon(FontAwesomeIcons.graduationCap),
});

}