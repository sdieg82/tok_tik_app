import 'package:flutter/material.dart';
import 'package:tok_tik_app/domain/entities/video_post.dart';

class VideoButtons extends StatelessWidget {
  final VideoPost videos;
  
  const VideoButtons({
    super.key, 
    required this.videos
  });

  @override
  Widget build(BuildContext context) {
    return Column(
    
      children: [
        IconButton(
          onPressed: (){}, 
          icon: Icon(Icons.favorite,color:Colors.red
        )),
      ]
    );
  }
}