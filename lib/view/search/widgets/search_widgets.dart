import 'package:flutter/material.dart';
import 'package:netflix/helpers/constants.dart';
import 'package:netflix/view/search/widgets/search_list_tile.dart';
import 'package:netflix/view/search/widgets/search_title.dart';

const imageUrl =
    // 'https://media.themoviedb.org/t/p/w533_and_h300_bestv2/eNkeLslgV9apdxcLYM45NNuwvaJ.jpg';
    'https://mb.cision.com/Public/14247/2902071/856b720fb81856ec_org.jpg';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SearchTitle(searchTitle: 'Top Searches'),
        height10,
        Expanded(
          child: ListView.separated(
              itemBuilder: (context, index) => const SearchListTile(),
              separatorBuilder: (context, index) => height10,
              itemCount: 12),
        )
      ],
    );
  }
}
