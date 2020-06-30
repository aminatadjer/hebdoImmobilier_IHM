import 'package:flutter/material.dart';
import 'package:flutter_app_ihm/Screens/Login/login_screen.dart';
import 'package:flutter_app_ihm/Screens/Signup/signup_screen.dart';
import 'package:flutter_app_ihm/Screens/Welcome/components/background.dart';
import 'package:flutter_app_ihm/Screens/Welcome/components/rounded_button.dart';
import 'package:flutter_app_ihm/components/or_divider.dart';





class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                left: 0,
                top: 120,
                right: 0,
                bottom: 0,
              ),
            ),
            Text(
              "La préférence de l'immobilier",
              style: TextStyle(color: Colors.white,fontSize: 20),
            ),
            Text(
                  "en Algérie depuis 2002 ",
              style: TextStyle(color: Colors.white,fontSize: 20),
            ),
        Padding(
          padding: const EdgeInsets.only(
            left: 0,
            top: 0,
            right: 0,
            bottom: 150,
          ),
        ),
            RoundedButton(
              text: "Se connecter",
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
            RoundedButton(
              text: "S'inscrire",
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
