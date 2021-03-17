import 'package:flutter/material.dart';

class LogoButton extends StatelessWidget {
  LogoButton({this.onTap, this.imageLocation, this.height});
  final Function onTap;
  final String imageLocation;
  final double height;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Image.asset(
        imageLocation,
        height: height,
      ),
    );
  }
}
