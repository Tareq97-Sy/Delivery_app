// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';
// import 'package:golden_soft_test/widgets/image_square.dart';

// class ImagesSlider extends StatelessWidget {
//   ImagesSlider({super.key, required this.imgList});
//   final List<String> imgList;

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: CarouselSlider(
//         options: CarouselOptions(
//           viewportFraction: 1.0,
//           enlargeCenterPage: false,
//           // autoPlay: false,
//         ),
//         items: imgList
//             .map((item) => Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 10, vertical: 50),
//                 child: ImageSquare(
//                   img: item,
//                 )))
//             .toList(),
//       ),
//     );
//   }
// }
