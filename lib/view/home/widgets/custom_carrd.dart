import 'package:flutter/material.dart';
import 'package:netflix/view/search/widgets/search_result.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Stack(
        children: [
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
    );
  }
}
