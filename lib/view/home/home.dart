import 'package:flutter/material.dart';
import 'package:netflix/helpers/colors.dart';
import 'package:netflix/helpers/constants.dart';
import 'package:netflix/view/home/widgets/custom_carrd.dart';
import 'package:netflix/view/widgets/mian_card.dart';
import 'package:netflix/view/widgets/mian_title.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      // appBar: AppBar(
      //   toolbarHeight: size.height * .06,
      //   backgroundColor: Colors.transparent,
      //   elevation: 0,
      // ),
      body: SafeArea(
        child: ListView(
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: size.height * .80,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(
                          'https://d1csarkz8obe9u.cloudfront.net/posterpreviews/adventure-movie-poster-template-design-7b13ea2ab6f64c1ec9e1bb473f345547_screen.jpg?ts=1636999411'),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 15,
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
                      Container(
                        width: size.width * .3,
                        height: size.width * .1,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: whiteColor,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.play_arrow,
                              size: size.width * .08,
                            ),
                            width10,
                            Text(
                              'Play',
                              style: TextStyle(
                                fontSize: size.height * .023,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            width5,
                          ],
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
              ],
            ),
            const MainTitle(
              title: 'Realease in the past year',
            ),
            SizedBox(
              height: size.height * .22,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) => const MainCard(),
              ),
            ),
            const MainTitle(title: 'Top 10 TV Shows in india Today'),
            SizedBox(
              height: size.height * .22,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) => const MainCard(),
              ),
            ),
            const MainTitle(title: 'Trending Now'),
            SizedBox(
              height: size.height * .22,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) => CoustomCard(index: index),
              ),
            ),
            const MainTitle(title: 'Trending Now'),
            SizedBox(
              height: size.height * .22,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) => const MainCard(),
              ),
            ),
            const MainTitle(title: 'Trending Now'),
            SizedBox(
              height: size.height * .22,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) => const MainCard(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
