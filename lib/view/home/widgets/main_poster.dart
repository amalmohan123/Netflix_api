// import 'package:flutter/material.dart';
// import 'package:netflix/helpers/colors.dart';
// import 'package:netflix/helpers/constants.dart';

// class MainPosterWidget extends StatelessWidget {
//   const MainPosterWidget({
//     super.key,
//     required this.size,
//   });

//   final Size size;

//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         Container(
//           width: double.infinity,
//           height: size.height * .80,
//           decoration: const BoxDecoration(
//             image: DecorationImage(
//               fit: BoxFit.fill,
//               image: NetworkImage(
//                   'https://d1csarkz8obe9u.cloudfront.net/posterpreviews/adventure-movie-poster-template-design-7b13ea2ab6f64c1ec9e1bb473f345547_screen.jpg?ts=1636999411'),
//             ),
//           ),
//           child: Positioned(
//             bottom: 0,
//             left: 0,
//             right: 0,
//             child: Row(
//               // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 // const Column(
//                 //   children: [
//                 //     Icon(
//                 //       Icons.add,
//                 //       color: whiteColor,
//                 //     ),
//                 //     Text(
//                 //       'MyList',
//                 //       style: TextStyle(color: whiteColor),
//                 //     ),
//                 //   ],
//                 // ),
//                 TextButton.icon(
//                   onPressed: () {},
//                   style: ButtonStyle(
//                     backgroundColor: MaterialStatePropertyAll(whiteColor),
//                     iconColor: MaterialStatePropertyAll(blackColor),
//                     shape: MaterialStatePropertyAll(
//                       RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(8),
//                       ),
//                     ),
//                   ),
//                   icon: Icon(Icons.play_arrow),
//                   label: Text(
//                     'Play',
//                     style: TextStyle(color: blackColor),
//                   ),
//                 )
//                 // Container(
//                 //   width: size.width * .3,
//                 //   height: size.width * .1,
//                 //   decoration: BoxDecoration(
//                 //     borderRadius: BorderRadius.circular(4),
//                 //     color: whiteColor,
//                 //   ),
//                 //   child: Row(
//                 //     mainAxisAlignment: MainAxisAlignment.center,
//                 //     children: [
//                 //       Icon(
//                 //         Icons.play_arrow,
//                 //         size: size.width * .08,
//                 //       ),
//                 //       width10,
//                 //       Text(
//                 //         'Play',
//                 //         style: TextStyle(
//                 //           fontSize: size.height * .023,
//                 //           fontWeight: FontWeight.w500,
//                 //         ),
//                 //       ),
//                 //       width5,
//                 //     ],
//                 //   ),
//                 // ),
//                 ,
//                 // const Column(
//                 //   children: [
//                 //     Icon(
//                 //       Icons.info_outline,
//                 //       color: whiteColor,
//                 //     ),
//                 //     Text(
//                 //       'Info',
//                 //       style: TextStyle(color: whiteColor),
//                 //     ),
//                 //   ],
//                 // ),
//               ],
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }


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
                  'https://d1csarkz8obe9u.cloudfront.net/posterpreviews/adventure-movie-poster-template-design-7b13ea2ab6f64c1ec9e1bb473f345547_screen.jpg?ts=1636999411'),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
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
                  icon: Icon(Icons.play_arrow),
                  label: Text(
                    'Play',
                    style: TextStyle(color: blackColor),
                  ),
                ),
                // Add your other widgets here
              ],
            ),
          ),
        ),
      ],
    );
  }
}

