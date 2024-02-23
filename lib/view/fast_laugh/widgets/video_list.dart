import 'package:flutter/material.dart';
import 'package:netflix/helpers/colors.dart';
import 'package:netflix/helpers/constants.dart';
import 'package:netflix/view/fast_laugh/widgets/video_action_widgets.dart';
import 'package:netflix/view/search/widgets/search_result.dart';

class VideoListWidgets extends StatelessWidget {
  const VideoListWidgets({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.accents[index % Colors.accents.length],
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Align(
                alignment: Alignment.bottomLeft,
                child: CircleAvatar(
                  backgroundColor: Colors.black45,
                  radius: 30,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.volume_down_rounded,
                      color: whiteColor,
                      size: 35,
                    ),
                  ),
                ),
              ),
              const Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(imageUrll),
                  ),
                  height15,
                  VideoActionWidgets(title: 'LOL', icon: Icons.emoji_emotions),
                  height15,
                  VideoActionWidgets(title: 'My List', icon: Icons.add),
                  height15,
                  VideoActionWidgets(title: 'Shere', icon: Icons.share),
                  height15,
                  VideoActionWidgets(title: 'LOL', icon: Icons.play_arrow),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
