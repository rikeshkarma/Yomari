import 'dart:ui';

import 'package:yomari/Components/already_have_account.dart';
import 'package:yomari/Components/round_button.dart';
import 'package:yomari/Components/round_input_field.dart';
import 'package:yomari/Components/round_password_field.dart';
import 'package:yomari/Screens/Homescreen/homescreen.dart';
import 'package:yomari/Screens/Signup/signup_screen.dart';
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
              "LOGIN",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
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
              text: "LOGIN",
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
            AlreadyHaveAccountCheck(
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
            ),
          ],
        ),
      ),
    );
  }
}
