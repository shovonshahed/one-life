import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:one_life/Screens/Login/login_screen.dart';
import 'package:one_life/Screens/Signup/signup_screen.dart';

import 'package:one_life/components/rounded_button.dart';
import 'package:one_life/constants.dart';

import 'background.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provides the total height and width of the screen
    return Background(
      child: SingleChildScrollView(
        // SingleChildScrollView is a widget that can be scrolled, needed when user types
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // to center the widgets
          children: <Widget>[
            Text(
              "WELCOME TO ONELIFE",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: size.height * 0.03, // space between Text and SvgPicture
            ),
            SvgPicture.asset(
              "assets/icons/blood_bank.svg",
              height: size.height * 0.4,
            ),
            SizedBox(
              height: size.height *
                  0.05, // space between  SvgPicture and RoundedButton
            ),
            RoundedButton(
              // customized button for login button
              text: "LOGIN",
              press: () {
                // by pressing takes it takes to the LoginScreen
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return LoginScreen();
                  }),
                );
              },
            ),
            RoundedButton(
              // customized button for sign up button
              text: "SIGN UP",
              color: kPrimaryLightColor,
              textColor: Colors.black,
              press: () {
                // by pressing takes it takes to the SignUpScreen
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
