import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/helpers/colors.dart';
import 'package:netflix/helpers/constants.dart';
import 'package:netflix/view/search/widgets/search_list_Tile.dart';

const imageUrl =
    'https://media.themoviedb.org/t/p/w533_and_h300_bestv2/eNkeLslgV9apdxcLYM45NNuwvaJ.jpg';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Top Searches',
          style: GoogleFonts.montserrat(
            color: whiteColor,
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),
        
        ListView.separated(
          shrinkWrap: true,
            itemBuilder: (context, index) => const SearchListTile(),
            separatorBuilder: (context, index) => height10,
            itemCount: 10)
      ],
    );
  }
}
