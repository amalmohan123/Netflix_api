import 'package:flutter/material.dart';
import 'package:netflix/view/widgets/mian_card.dart';
import 'package:netflix/view/widgets/mian_title.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              color: Colors.amber,
              width: double.infinity,
              height: size.height * .90,
              child: const Stack(
                children: [
                  
                ],
              ),
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
