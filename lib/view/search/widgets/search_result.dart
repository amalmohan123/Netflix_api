import 'package:flutter/material.dart';
import 'package:netflix/helpers/constants.dart';
import 'package:netflix/view/search/widgets/search_title.dart';
import 'package:netflix/view/search/widgets/search_card.dart';

const imageUrll =
    'https://rukminim2.flixcart.com/image/850/1000/l3bx5e80/poster/p/x/m/small-kgf-poster-kgf-yash-movie-poster-for-room-kgf-chapter-2-original-imageh8qchumcz8k.jpeg?q=20&crop=false';

class SearchResult extends StatelessWidget {
  const SearchResult({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      SearchTitle(searchTitle: 'Movie & TV'),  
      height10,
      Expanded(
        child: GridView.count(
          crossAxisCount: 3,
          crossAxisSpacing: 8,
          mainAxisSpacing:8,
          childAspectRatio: 2/3,
          children: List.generate(
            20,
            (index) => const SearchCard(),
          ),
        ),
      )
    ]);
  }
}
