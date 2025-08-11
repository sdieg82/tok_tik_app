import 'package:flutter/material.dart';
import 'package:tok_tik_app/domain/entities/video_post.dart';
import 'package:tok_tik_app/presentation/widgets/shared/video_buttons.dart';
import 'package:tok_tik_app/presentation/widgets/video/fullscreen_player.dart';

class VideoScrollable extends StatelessWidget {
  final List<VideoPost> videos;
  const VideoScrollable({super.key, required this.videos});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: Axis.vertical,
      itemCount: videos.length,
      itemBuilder: (context, index) {
        final videoPost = videos[index];
        return Stack(
          children: [
            //Video Player
            SizedBox.expand(
              child: FullscreenPlayer(
                caption: videoPost.caption,
                videoUrl: videoPost.videoUrl,
              ),
            ),
            Positioned(
              bottom: 40,
              right: 20,
              child: VideoButtons(videos: videoPost),
            ),
          ],
        );
      },
    );
  }
}

class _CutomIconButton extends StatelessWidget {
  final int value;
  final IconData iconData;
  final Color color;
  
  const _CutomIconButton({
    super.key, 
    required this.value, 
    required this.iconData, 
    required this.color
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(onPressed: (){}, icon: Icon(Icons.favorite,color: Colors.red,)),
        Text('$value')
      ],
    );
  }
}
