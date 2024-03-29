import 'package:flutter/material.dart';
import 'package:netflix/view/fast_laugh/widgets/video_list.dart';

class FastLaughScreen extends StatelessWidget {
  const FastLaughScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          scrollDirection: Axis.vertical,
          children: List.generate(
            10,
            (index) => VideoListWidgets(
              index: index,
            ),
           ),
        ),
      ),
    );
  }
}
