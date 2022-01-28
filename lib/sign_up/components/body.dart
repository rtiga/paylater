import 'package:flutter/material.dart';
import 'package:paylater_startup/util/colors.dart';
import 'package:paylater_startup/util/size_config.dart';

import 'sign_up_form.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    var screenSize = MediaQuery.of(context).size;

    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20,screenSize.width)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: screenSize.height * 0.04), // 4%
                Text("Register Account", style: headingStyle(screenSize.width)),
                Text(
                  "Complete your details or continue \nwith social media",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: screenSize.height * 0.08),
                SignUpForm(),
                SizedBox(height: screenSize.height * 0.08),
                /*Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocalCard(
                      icon: "assets/icons/google-icon.svg",
                      press: () {},
                    ),
                    SocalCard(
                      icon: "assets/icons/facebook-2.svg",
                      press: () {},
                    ),
                    SocalCard(
                      icon: "assets/icons/twitter.svg",
                      press: () {},
                    ),
                  ],
                ),*/
                SizedBox(height: getProportionateScreenHeight(20,screenSize.height)),
                Text(
                  'By continuing your confirm that you agree \nwith our Term and Condition',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.caption,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
