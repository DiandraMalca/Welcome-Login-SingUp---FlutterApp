import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:login_app/Screens/Login/login_screen.dart';
import 'package:login_app/Screens/SingUp/singup_screen.dart';
import 'package:login_app/Screens/Welcome/components/background.dart';
import 'package:login_app/components/rounded_button.dart';
import 'package:login_app/constants.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
        child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            'WELCOME TO THE DEMO',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: size.height * 0.03),
          SvgPicture.asset(
            'assets/icons/chat.svg',
            height: size.height * 0.45,
          ),
          SizedBox(height: size.height * 0.05),
          RoundedButton(
            text: 'LOGIN',
            press: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return const LoginScreen();
                },
              ));
            },
          ),
          RoundedButton(
            text: 'SING UP',
            color: kPrimaryLightColor,
            textColor: Colors.black,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const SingUpScreen();
                  },
                ),
              );
            },
          ),
        ],
      ),
    ));
  }
}
