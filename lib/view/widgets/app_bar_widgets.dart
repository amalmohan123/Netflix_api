import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/helpers/constants.dart';

class AppBarWidgets extends StatelessWidget {
  const AppBarWidgets({super.key, required this.appBarTittle});

  final String appBarTittle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 25),
      child: Row(
        children: [
          Text(
            appBarTittle,
            style: GoogleFonts.montserrat(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Spacer(),
          const Icon(
            Icons.cast,
            color: Colors.grey,
            size: 25,
          ),
          width20,
          Container(
            width: 28,
            height: 28,
            color: Colors.blue,
          )
        ],
      ),
    );
  }
}
