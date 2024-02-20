import 'package:flutter/material.dart';
import 'package:netflix/helpers/constants.dart';
import 'package:netflix/view/search/widgets/search_widgets.dart';

class SearchListTile extends StatelessWidget {
  const SearchListTile({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        Container(
          width: size.width * .3,
          height: 85,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            image: const DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(imageUrl),
            ),
          ),
        ),
        width10,
        const Expanded(
          child: Text(
            'Movie Name',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              wordSpacing: 1,
              fontSize: 17,
            ),
          ),
        ),
        const CircleAvatar(
          backgroundColor: Colors.white,
          radius: 25,
          child: CircleAvatar(
            backgroundColor: Colors.black,
            radius: 22,
            child: Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: 28,
            ),
          ),
        )
      ],
    );
  }
}
