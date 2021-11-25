import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_app/constants.dart';

class SocialIcon extends StatelessWidget {
  final String iconSrt;
  final Function press;
  const SocialIcon({
    Key? key,
    required this.iconSrt,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press(context),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          border: Border.all(width: 2, color: kPrimaryLightColor),
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(
          iconSrt,
          height: 20,
          width: 20,
        ),
      ),
    );
  }
}
