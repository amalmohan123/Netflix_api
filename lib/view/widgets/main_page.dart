import 'package:flutter/material.dart';
import 'package:netflix/helpers/colors.dart';
import 'package:netflix/view/downloads/downloads.dart';
import 'package:netflix/view/fast_laugh/fast_laugh.dart';
import 'package:netflix/view/home/home.dart';
import 'package:netflix/view/hot_and_new/hot_and_new.dart';
import 'package:netflix/view/search/search.dart';
import 'package:netflix/view/widgets/bottom_nav_bar.dart';

class MainPageWidgets extends StatelessWidget {
  MainPageWidgets({super.key});

  final pages = [
    const HomeScreen(),
    const HotAndNew(),
    const FastLaughScreen(),
    const SearchScreen(),
    DownloadsScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: ValueListenableBuilder(
          valueListenable: indexChangeNotifier,
          builder: (context, int index, _) {
            return pages[index];
          }),
      bottomNavigationBar: const BottomNavWidget(),
    );
  }
}
