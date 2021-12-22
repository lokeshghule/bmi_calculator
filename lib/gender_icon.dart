import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class genderIcon extends StatelessWidget {
  final IconData genderSymbol;
  final String genderName;

  genderIcon({required this.genderSymbol, required this.genderName});
  @override
  Widget build(BuildContext context) {
    final double mheight = MediaQuery.of(context).size.height;
    //final double mwidth = MediaQuery.of(context).size.width;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          genderSymbol,
          color: Colors.amberAccent[400],
          size: mheight * 0.1,
        ),
        Text(
          genderName,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
