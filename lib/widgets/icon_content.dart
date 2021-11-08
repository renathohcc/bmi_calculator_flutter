import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  final IconData? icon;
  final String? iconText;

  IconContent({@required this.icon, @required this.iconText});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: kIconSize,
        ),
        SizedBox(
          height: kDefaultGap,
        ),
        Text(
          iconText ?? "",
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
