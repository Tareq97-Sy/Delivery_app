import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../fixed_ui/constants.dart';

class TextFieldWidget extends StatelessWidget {
  TextFieldWidget(
      {super.key,
      required this.controller,
      required this.label,
      required this.icon,
      required this.hint});
  final TextEditingController controller;
  final String label;
  final IconData icon;
  final String hint;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: TextFormField(
        controller: controller,
        autofocus: true,
        decoration: InputDecoration(
          labelText: label,
          prefixIcon: Icon(icon),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(
              width: 12.0,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(kRaduisBorder),
            borderSide: BorderSide(
              color: kPrimaryColor,
              width: 2.0,
            ),
          ),
        ),
      ),
    );
  }
}
