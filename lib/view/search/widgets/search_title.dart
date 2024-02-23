import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/helpers/colors.dart';

class SearchTitle extends StatelessWidget {
 SearchTitle({super.key, required this.searchTitle});
  String searchTitle;
  @override
  Widget build(BuildContext context) {
    return Text(
      searchTitle,
      style: GoogleFonts.montserrat(

        
        color: whiteColor,
        fontSize: 26,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
