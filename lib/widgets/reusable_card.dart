import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color? color;
  final Widget? cardChild;
  final void Function()? onTappedFunction;

  ReusableCard({@required this.color, this.cardChild, this.onTappedFunction});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTappedFunction,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}