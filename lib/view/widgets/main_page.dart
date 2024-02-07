import 'package:flutter/material.dart';
import 'package:netflix/helpers/colors/colors.dart';
import 'package:netflix/view/widgets/bottom_nav_bar.dart';

class MainPageWidgets extends StatelessWidget {
  const MainPageWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: backgroundColor,
      
      body: SafeArea(
        child: Text('Main Page'),
      ),
      bottomNavigationBar: BottomNavWidget(),
    );
  }
}
