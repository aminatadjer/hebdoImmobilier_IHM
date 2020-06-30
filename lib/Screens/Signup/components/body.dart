import 'package:flutter/material.dart';
import 'package:flutter_app_ihm/Screens/Signup/signup_agence.dart';
import 'package:flutter_app_ihm/Screens/Signup/signup_particulier.dart';
import 'package:flutter_app_ihm/Screens/Signup/components/background.dart';
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
            Text(
              "Inscription",
              style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 20),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 0,
                top: 40,
                right: 0,
                bottom: 0,
              ),
            ),
            RoundedButton(
              text: "Agence",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpAgence();
                    },
                  ),
                );
              },
            ),
            OrDivider(),
            RoundedButton(
              text: "Particulier",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpParticulier();
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
