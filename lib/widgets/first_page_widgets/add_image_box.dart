import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

// import 'package:image_picker/image_picker.dart';

class AddImageBox extends StatelessWidget {
  AddImageBox({
    super.key,
    required this.press,
    this.paddingHorizantal = 28,
    this.paddingVertical = 10,
  });
  final VoidCallback press;
  final double paddingHorizantal;
  final double paddingVertical;

  @override
  Widget build(BuildContext context) {
    return Container(
      // ignore: prefer_const_constructors
      padding: EdgeInsets.symmetric(
          horizontal: paddingHorizantal, vertical: paddingVertical),
      decoration: BoxDecoration(
        border: Border.all(
          color: kDefaultIconLightColor,
        ),
        color: kDefaultIconLightColor,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        children: [
          IconButton(
            onPressed: press,
            icon: Icon(Icons.add_circle_outline_rounded),
            iconSize: 35,
            color: Colors.grey,
          ),
          Text(
            "أضف صور",
            style: TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
