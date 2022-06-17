import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:one_life/Screens/Login/login_screen.dart';
import 'package:one_life/Screens/Signup/components/background.dart';
import 'package:one_life/Screens/Signup/components/or_divider.dart';
import 'package:one_life/Screens/Signup/components/social_icon.dart';
import 'package:one_life/components/already_have_an_account_check.dart';
import 'package:one_life/components/rounded_button.dart';
import 'package:one_life/components/rounded_input_field.dart';
import 'package:one_life/components/rounded_password_field.dart';

class Body extends StatelessWidget {
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
              "SIGNUP",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              // space between Text and SvgPicture
              height: size.height * 0.03,
            ),
            SvgPicture.asset(
              "assets/icons/blood_transfusion.svg",
              height: size.height * 0.30,
            ),
            RoundedInputField(
              // for user to tpye in their email address
              hintText: "Your Email Address",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              // for user to tpye in their password
              onChanged: (value) {},
            ),
            RoundedButton(
              // customized Sign up button
              text: "SIGN UP",
              press: () {},
            ),
            SizedBox(
              // space between RoundedButton and AlreadyHaveAnAccountCheck
              height: size.height * 0.03,
            ),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                // if pressed, leads to login screen
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            OrDivider(), // a divider
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocialIcon(
                  // if pressed, leads to google login
                  iconScr: "assets/icons/google-plus.svg",
                  press: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
