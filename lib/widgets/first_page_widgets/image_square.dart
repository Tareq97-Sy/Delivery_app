import 'dart:io';

import 'package:flutter/material.dart';

import '../../fixed_ui/constants.dart';

class ImageSquare extends StatelessWidget {
  ImageSquare({super.key, required this.imgFile});
  //final String img;
  final File? imgFile;
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(
            color: kPrimaryColor,
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: imgFile != null
              ? Image.file(
                  imgFile!,
                )
              : const SizedBox(),
        ),
      ),
      Positioned(
          right: 0,
          bottom: 0,
          child: Container(
            decoration: BoxDecoration(
              color: kPrimaryColor.withOpacity(0.01),
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(10)),
            ),
            padding: EdgeInsets.only(left: 3),
            child: PopupMenuButton(
              color: Colors.white,
              itemBuilder: (BuildContext context) {
                return [
                  PopupMenuItem(
                    child: Text('Delete'),
                    value: 'delete',
                  ),
                ];
              },
            ),
          ))
    ]);
  }
}
