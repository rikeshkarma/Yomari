import 'dart:ui';

import 'package:yomari/Components/round_button.dart';
import 'package:yomari/Screens/Login/login_screen.dart';
import 'package:yomari/Screens/Signup/signup_screen.dart';
import 'package:yomari/constants.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size =
        MediaQuery.of(context).size; //Total height and width of the screen
    return Container(
      height: size.height,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'WELCOME TO YOMARI !',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Image.network(
            'https://media.istockphoto.com/vectors/namaste-lettering-calligraphy-inscription-brush-hand-drawn-quote-on-vector-id1162471759?b=1&k=6&m=1162471759&s=612x612&w=0&h=vl5iYZepN-26NIGwByZAdBB5jnpmSgYPQEC3ZZc15Yg=',
            height: size.height * 0.45,
          ),
          RoundButton(
            text: "LOGIN",
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
          RoundButton(
            text: "SIGNUP",
            color: kPrimaryLightColor,
            textcolor: kPrimaryColor,
            press: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return SignUpScreen();
              }));
            },
          ),
        ],
      ),
    );
  }
}
