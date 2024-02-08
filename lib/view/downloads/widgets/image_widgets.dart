import 'dart:math';

import 'package:flutter/material.dart';

class DownloadImageWidgets extends StatelessWidget {
  const DownloadImageWidgets({
    super.key,
    required this.size,
    required this.imageList,
  });

  final Size size;
  final List imageList;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: 20 * pi / 180,
      child: Container(
        width: size.width * .28,
        height: size.height * .195,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            image: DecorationImage(
              image: NetworkImage(
                imageList[0],
              ),
            )),
      ),
    );
  }
}
