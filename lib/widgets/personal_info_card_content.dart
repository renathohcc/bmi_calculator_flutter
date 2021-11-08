import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class PersonalInfoCardContent extends StatelessWidget {
  final String? infoLabel;
  final int? infoNumber;
  final Widget? plusButton;
  final Widget? minusButton;

  PersonalInfoCardContent(
      {@required this.infoLabel,
      @required this.infoNumber,
      @required this.minusButton,
      @required this.plusButton});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          infoLabel ?? "",
          style: kLabelTextStyle,
        ),
        Text(
          infoNumber.toString(),
          style: kNumberStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            minusButton ??
                SizedBox(
                  width: 10,
                  height: 10,
                ),
            SizedBox(
              width: 10.0,
            ),
            plusButton ??
                SizedBox(
                  width: 10,
                  height: 10,
                ),
          ],
        ),
      ],
    );
  }
}
