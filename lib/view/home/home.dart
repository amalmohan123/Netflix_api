import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix/view/home/widgets/custom_carrd.dart';
import 'package:netflix/view/home/widgets/main_poster.dart';
import 'package:netflix/view/widgets/mian_card.dart';
import 'package:netflix/view/widgets/mian_title.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(false);

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: scrollNotifier,
        builder: (BuildContext context, index, _) {
          return NotificationListener<UserScrollNotification>(
            onNotification: (notification) {
              final ScrollDirection direction = notification.direction;
              // print(direction);
              if (direction == ScrollDirection.reverse) {
                scrollNotifier.value = false;
              } else if (direction == ScrollDirection.forward) {
                scrollNotifier.value = true;
              }

              return true;
            },
            child: ListView(
              children: [
                MainPosterWidget(size: size),
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
          );
        },
      ),
    );
  }
}
