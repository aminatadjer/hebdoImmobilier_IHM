import 'package:flutter/material.dart';
import 'package:flutter_app_ihm/Screens/Login/login_screen.dart';
import 'package:flutter_app_ihm/Screens/Signup/components/background.dart';
import 'package:flutter_app_ihm/components/already_have_an_account_acheck.dart';
import 'package:flutter_app_ihm/components/rounded_input_field.dart';
import 'package:flutter_app_ihm/components/rounded_password_field.dart';
import 'package:flutter_app_ihm/components/rounded_button.dart';
import '../../../constants.dart';


class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                left: 0,
                top: 100,
                right: 0,
                bottom: 0,
              ),
            ),
            Text(
              "Inscription Particulier",
              style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 20),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 0,
                top: 10,
                right: 0,
                bottom: 0,
              ),
            ),
            RoundedInputField(
              hintText: "Nom",
              onChanged: (value) {},
            ),
            RoundedInputField(
              hintText: "Prénom",
              onChanged: (value) {},
            ),
            RoundedInputField(
              hintText: "Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),

            RoundedInputField(
              hintText: "Numéro de téléphone",
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "S'inscrire",
              color: kPrimaryColor,
              press: () {},
            ),

            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
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

          ],
        ),
      ),
    );
  }
}
