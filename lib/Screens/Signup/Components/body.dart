import 'dart:ui';

import 'package:yomari/Components/already_have_account.dart';
import 'package:yomari/Components/round_button.dart';
import 'package:yomari/Components/round_input_field.dart';
import 'package:yomari/Components/round_password_field.dart';
import 'package:yomari/Screens/Homescreen/homescreen.dart';
import 'package:yomari/Screens/Login/login_screen.dart';
import 'package:yomari/Screens/Signup/Components/or_divider.dart';
import 'package:yomari/Screens/Signup/Components/social_icon.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "SIGNUP",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Image.network(
              'https://media.istockphoto.com/vectors/namaste-lettering-calligraphy-inscription-brush-hand-drawn-quote-on-vector-id1162471759?b=1&k=6&m=1162471759&s=612x612&w=0&h=vl5iYZepN-26NIGwByZAdBB5jnpmSgYPQEC3ZZc15Yg=',
              height: size.height * 0.35,
            ),
            RoundInputField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            RoundPasswordField(
              onChanged: (value) {},
            ),
            RoundButton(
              text: "SIGNUP",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Homescreen();
                    },
                  ),
                );
              },
            ),
            SizedBox(height: 15),
            AlreadyHaveAccountCheck(
              login: false,
              press: () {
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
            OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialIcon(
                  iconSrc:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQYyS6TIA2dETTLSpCzukmpTBrh660uWNjL_w&usqp=CAU",
                  press: () {},
                ),
                SocialIcon(
                  iconSrc:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcR8sM8SPjch3TJTqdGtz-lHsio2dgQg0Bo6og&usqp=CAU",
                  press: () {},
                ),
                SocialIcon(
                  iconSrc:
                      "data:image/png;base64,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",
                  press: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
