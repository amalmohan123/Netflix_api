import 'package:flutter/material.dart';
import 'package:netflix/view/search/widgets/search_result.dart';

class MianCard extends StatelessWidget {
  const MianCard({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * .3,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        image: DecorationImage(
          image: NetworkImage(imageUrll),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
