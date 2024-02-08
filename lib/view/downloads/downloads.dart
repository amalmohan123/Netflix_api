

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/helpers/colors/colors.dart';
import 'package:netflix/helpers/colors/constants.dart';
import 'package:netflix/view/downloads/widgets/image_widgets.dart';
import 'package:netflix/view/widgets/app_bar_widgets.dart';
import 'package:netflix/view/widgets/custom_button_widget.dart';

class DownloadsScreen extends StatelessWidget {
  DownloadsScreen({super.key});

  final List imageList = [
    'https://media.themoviedb.org/t/p/w220_and_h330_face/A7EByudX0eOzlkQ2FIbogzyazm2.jpg',
    'https://media.themoviedb.org/t/p/w220_and_h330_face/7lTnXOy0iNtBAdRP3TZvaKJ77F6.jpg',
    'https://media.themoviedb.org/t/p/w220_and_h330_face/yRt7MGBElkLQOYRvLTT1b3B1rcp.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBarWidgets(appBarTittle: 'Downloads'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            height10,
            const Row(
              children: [
                Icon(
                  Icons.settings,
                  color: whiteColor,
                ),
                width10,
                Text(
                  'Smart Downloads',
                  style: TextStyle(
                      color: whiteColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
              ],
            ),
            SizedBox(height: 50),
            Text(
              'Introducing Downloads for You',
              style: GoogleFonts.montserrat(
                  color: whiteColor, fontWeight: FontWeight.bold, fontSize: 22),
            ),
            height20,
            const Text(
              "we'll download a personalised selection of\nmovies and shows for you, so there's\nalways something to watch on your\ndevice.",
              style: TextStyle(
                color: greyColor,
                fontSize: 17,
              ),
              textAlign: TextAlign.center,
            ),
            height25,
            height10,
            Container(
              height: size.height * .32,
              width: size.height * .32,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: circleColor,
                    radius: 110,
                  ),
                  DownloadImageWidgets(size: size, imageList: imageList)
                ],
              ),
            ),
            const SizedBox(height: 1),
            CoustomButtonWidget(
              textTitle: 'Set Up',
              buttonColor: blueColor,
              onPressed: () {},
              textColor: whiteColor,
              buttonWidth: double.infinity,
            ),
            height15,
            CoustomButtonWidget(
              textTitle: 'See What You Can Download',
              buttonColor: downloadButton,
              onPressed: () {},
              textColor: blackColor,
              buttonWidth: 315,
            ),
          ],
        ),
      ),
    );
  }
}

