import 'package:flutter/material.dart';
import 'package:netflix/view/search/widgets/search_result.dart';

class SearchCard extends StatelessWidget {
  const SearchCard({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * .3,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        image: const DecorationImage(
          image: NetworkImage(imageUrll),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
