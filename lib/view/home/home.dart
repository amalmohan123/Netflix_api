import 'package:flutter/material.dart';
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
                itemBuilder: (context, index) => CoustomCard(
                  index: index,
                ),
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
