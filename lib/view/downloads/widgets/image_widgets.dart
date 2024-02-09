import 'dart:math';

import 'package:flutter/material.dart';

class DownloadImageWidgets extends StatelessWidget {
  const DownloadImageWidgets({
    super.key,
    required this.size,
    required this.imageList,
    this.angle = 0,
    required this.margin,
  });

  final Size size;
  final double angle;
  final String imageList;
  final EdgeInsets margin;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: angle * pi / 180,
      child: Container(
        margin: margin,
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          image: DecorationImage(
            image: NetworkImage(
              imageList,
            ),
            fit: BoxFit.cover
          ),
        ),
      ),
    );
  }
}
