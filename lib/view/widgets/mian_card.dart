import 'package:flutter/material.dart';
import 'package:netflix/view/search/widgets/search_result.dart';

class MainCard extends StatelessWidget {
  const MainCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Container(
        height:size.height*.22,
         width:size.width*.3,
        // width: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: const DecorationImage(
            
            image: NetworkImage(imageUrll),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
