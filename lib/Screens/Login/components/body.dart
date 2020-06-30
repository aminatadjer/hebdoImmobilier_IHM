import 'package:flutter/material.dart';
import 'background.dart';
import '../../Signup/signup_screen.dart';
import '../../../components/already_have_an_account_acheck.dart';
import '../../../Screens/Login/components/rounded_input_field.dart';
import 'rounded_password_field.dart';
import '../../../components/rounded_button.dart';
import '../../../constants.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: size.height * 0.03),
            SizedBox(height: size.height * 0.03),
            Padding(
              padding: const EdgeInsets.only(
                left: 0,
                top: 70,
                right: 0,
                bottom: 0,
              ),
            ),
            Text(
              "Connexion",
              style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 20),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 0,
                top:40,
                right: 0,
                bottom: 0,
              ),
            ),
            RoundedInputField(
              hintText: "Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 0,
                top: 70,
                right: 0,
                bottom: 0,
              ),
            ),
            RoundedButton(
              text: "Se connecter",
              color: kPrimaryColor,

              press: () {},
            ),
            SizedBox(height: size.height * 0.03),

            AlreadyHaveAnAccountCheck(
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
