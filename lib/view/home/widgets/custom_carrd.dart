import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:netflix/helpers/colors.dart';
import 'package:netflix/helpers/constants.dart';
import 'package:netflix/view/search/widgets/search_result.dart';

class CoustomCard extends StatelessWidget {
  const CoustomCard({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Stack(
        children: [
          Row(
            children: [
              width25,
              width15,
              Container(
                height: size.height * .22,
                width: size.width * .3,
                // width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                    image: NetworkImage(imageUrll),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            bottom: -22,
            left: -1,
            child: BorderedText(
              strokeColor: whiteColor,
              strokeWidth: 5,
              child: Text(
                "${index + 1}",
                style: const TextStyle(
                  // decoration: TextDecoration.none,
                  color: blackColor,

                  fontSize: 105,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
