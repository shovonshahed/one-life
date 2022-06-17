import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:one_life/Screens/Login/components/background.dart';
import 'package:one_life/Screens/Signup/signup_screen.dart';
import 'package:one_life/components/already_have_an_account_check.dart';
import 'package:one_life/components/rounded_button.dart';
import 'package:one_life/components/rounded_input_field.dart';
import 'package:one_life/components/rounded_password_field.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    //This size provides the total height and width of the screen
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'LOGIN',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              // space between Text and SvgPicture
              height: size.height * 0.03,
            ),
            SvgPicture.asset(
              "assets/icons/blood_donation.svg",
              height: size.height * 0.35,
            ),
            SizedBox(
              // space between SvgPicture and RoundedInputField
              height: size.height * 0.03,
            ),
            RoundedInputField(
              // for user to tpye in their email address
              hintText: "You Email Address",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              // for user to tpye in their password
              onChanged: (value) {},
            ),
            RoundedButton(
              // customized Login button
              text: "LOGIN",
              press: () {},
            ),
            SizedBox(
              // space between RoundedButton and AlreadyHaveAnAccountCheck
              height: size.height * 0.03,
            ),
            AlreadyHaveAnAccountCheck(
              // if pressed, leads to Sign up page
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
