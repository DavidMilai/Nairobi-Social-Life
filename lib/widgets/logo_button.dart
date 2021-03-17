import 'package:flutter/material.dart';

class LogoButton extends StatelessWidget {
  LogoButton({this.onTap, this.imageLocation});
  final Function onTap;
  final String imageLocation;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Image.asset(
        imageLocation,
      ),
    );
  }
}
