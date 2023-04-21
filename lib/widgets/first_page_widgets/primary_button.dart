import 'package:flutter/material.dart';

import '../../fixed_ui/constants.dart';

class PrimaryButton extends StatelessWidget {
  PrimaryButton({
    super.key,
    required this.text,
    required this.press,
    this.color = kPrimaryColor,
    this.paddingHorizantal = 100,
    this.paddingVertical = 15,
    this.colorText = kPrimaryColorText,
  });
  final String text;
  final VoidCallback press;
  final color;
  final colorText;
  final double paddingHorizantal;
  final double paddingVertical;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: MaterialButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(kRaduisBorder),
        ),
        padding: EdgeInsets.symmetric(
            horizontal: paddingHorizantal, vertical: paddingVertical),
        color: color,
        onPressed: press,
        child: Text(text,
            style: TextStyle(
              color: colorText,
            )),
      ),
    );
  }
}
