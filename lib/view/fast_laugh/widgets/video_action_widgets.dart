import 'package:flutter/material.dart';
import 'package:netflix/helpers/colors.dart';

class VideoActionWidgets extends StatelessWidget {
  const VideoActionWidgets(
      {super.key, required this.title, required this.icon});
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          size: 28,
          color: whiteColor,
        ),
        Text(
          title,
          style: TextStyle(
            color: whiteColor,
          ),
        ),
      ],
    );
  }
}
