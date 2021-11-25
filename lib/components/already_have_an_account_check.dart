import 'package:flutter/material.dart';
import 'package:login_app/constants.dart';

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final Function press;
  const AlreadyHaveAnAccountCheck({
    Key? key,
    this.login = true,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          MainAxisAlignment.center, //alinear todos los tetos dentro de widget
      children: <Widget>[
        Text(
          login ? "Don't have an Account?" : "Already have an Account?",
          style: const TextStyle(color: kPrimaryColor),
        ),
        GestureDetector(
          onTap: press(), //!!!!!!!!!! se agrega o no ()?
          child: Text(
            login ? "Sing Up" : "Sing In",
            style: const TextStyle(
              color: kPrimaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
