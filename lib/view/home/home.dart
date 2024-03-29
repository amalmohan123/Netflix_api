import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix/helpers/colors.dart';
import 'package:netflix/helpers/constants.dart';
import 'package:netflix/view/home/widgets/custom_carrd.dart';
import 'package:netflix/view/home/widgets/main_poster.dart';
import 'package:netflix/view/widgets/mian_card.dart';
import 'package:netflix/view/widgets/mian_title.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: ValueListenableBuilder(
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
              child: Stack(
                children: [
                  ListView(
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
                          itemBuilder: (context, index) =>
                              CoustomCard(index: index),
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
                  scrollNotifier.value == true
                      ? AnimatedContainer(
                          duration: const Duration(milliseconds: 1000),
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.1),
                          ),
                          width: double.infinity,
                          height: size.height * .105,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  width5,
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image.network(
                                      'https://images.ctfassets.net/4cd45et68cgf/Rx83JoRDMkYNlMC9MKzcB/2b14d5a59fc3937afd3f03191e19502d/Netflix-Symbol.png?w=700&h=456',
                                      width: size.width * 0.090,
                                      height: size.height * 0.045,
                                    ),
                                  ),
                                  const Spacer(),
                                  const Icon(
                                    Icons.cast,
                                    color: whiteColor,
                                    size: 25,
                                  ),
                                  width20,
                                  Container(
                                    width: 28,
                                    height: 28,
                                    color: Colors.blue,
                                  ),
                                  width10
                                ],
                              ),
                              const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "TV Shows",
                                    style: TextStyle(
                                        color: whiteColor,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 18),
                                  ),
                                  Text(
                                    "Movies",
                                    style: TextStyle(
                                        color: whiteColor,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 18),
                                  ),
                                  Text(
                                    "Categories",
                                    style: TextStyle(
                                        color: whiteColor,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 18),
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      : const SizedBox(),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
