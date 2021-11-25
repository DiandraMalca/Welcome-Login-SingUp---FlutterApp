import 'package:flutter/material.dart';
import 'package:login_app/components/text_field_container.dart';
import 'package:login_app/constants.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RoundedPasswordField({
    Key? key,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFielContainer(
      // epacio donde se pone la contraseña
      child: TextField(
        obscureText: true, //para ocultar los caracteres
        onChanged: onChanged,
        decoration: const InputDecoration(
            hintText: 'Password',
            icon: Icon(
              Icons.lock,
              color: kPrimaryColor,
            ),
            suffixIcon: Icon(
              Icons.visibility,
              color: kPrimaryColor,
            ),
            border: InputBorder.none //despliegue del teclado
            ),
      ),
    );
  }
}
