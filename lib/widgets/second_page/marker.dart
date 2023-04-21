import 'package:flutter/material.dart';

import '../../fixed_ui/constants.dart';

class MarkerWidget extends StatelessWidget {
  const MarkerWidget({super.key, required this.press});
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      IconButton(
        onPressed: press,
        icon: Icon(
          Icons.location_on_rounded,
        ),
        iconSize: 38,
        color: kPrimaryColor,
      ),
      Positioned(
          top: 0,
          left: 0,
          child: Container(
            padding: EdgeInsets.all(3),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.black),
              color: Colors.redAccent,
            ),
            child: Text(
              "5",
              style: TextStyle(color: Colors.white),
            ),
          ))
    ]);
  }
}
