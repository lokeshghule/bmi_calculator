import 'package:flutter/material.dart';

const activeCardColor = Colors.grey;

class ReusableCard extends StatelessWidget {
  final Color colour;
  final Widget? myChild;
  final VoidCallback? onPress;

  ReusableCard({this.colour = activeCardColor, this.myChild, this.onPress});

  @override
  Widget build(BuildContext context) {
    double mheight = MediaQuery.of(context).size.height;

    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: myChild,
        margin: EdgeInsets.all(mheight * 0.01),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(mheight * 0.03), color: colour),
      ),
    );
  }
}
