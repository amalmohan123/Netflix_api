import 'package:flutter/material.dart';
import 'package:netflix/helpers/colors.dart';

class MainPosterWidget extends StatelessWidget {
  const MainPosterWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: size.height * 0.80,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(
                'https://assets.mubicdn.net/images/notebook/post_images/19593/images-w1400.jpg?1443151342',
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 5,
          left: 0,
          right: 0,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Column(
                  children: [
                    Icon(
                      Icons.add,
                      color: whiteColor,
                    ),
                    Text(
                      'MyList',
                      style: TextStyle(color: whiteColor),
                    ),
                  ],
                ),
                TextButton.icon(
                  onPressed: () {},
                  style: ButtonStyle(  
                    backgroundColor: MaterialStateProperty.all(whiteColor),
                    iconColor: MaterialStateProperty.all(blackColor),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                  
                  icon: const Icon(Icons.play_arrow),
                  label: const Text(
                    'Play',
                    style: TextStyle(color: blackColor), 
                  ),
                ),
                const Column(
                  children: [
                    Icon(
                      Icons.info_outline,
                      color: whiteColor,
                    ),
                    Text(
                      'Info',
                      style: TextStyle(color: whiteColor),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
