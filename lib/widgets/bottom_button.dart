import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  final void Function()? onTap;
  final String? buttonTitle;

  BottomButton({
    @required this.onTap,
    @required this.buttonTitle,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: kPinkColor,
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kBottomButtonHeight,
        child: Center(
          child: Text(
            buttonTitle ?? "",
            style: kLargeButtonTextStyle,
          ),
        ),
      ),
    );
  }
}
