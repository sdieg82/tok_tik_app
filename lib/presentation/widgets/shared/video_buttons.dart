import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:tok_tik_app/Config/helpers/human_formats.dart';
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
        _CustomIconButton(
          value: videos.likes, 
          icondata: Icons.favorite, 
          iconColor: Colors.red
        ),
        SizedBox(height: 20),
        _CustomIconButton(
          value: videos.likes, 
          icondata: Icons.remove_red_eye_outlined,
        ),
        SizedBox(height: 20),
        SpinPerfect(
          child: _CustomIconButton(
            value: 0, 
            icondata: Icons.play_circle_outline
          ),
        ),
      ],
    );
  }
}


class _CustomIconButton extends StatelessWidget {
  final int value;
  final IconData icondata;
  final Color? color;
  const _CustomIconButton({
    super.key, 
    required this.value, 
    required this.icondata, 
    iconColor
  }):color=iconColor ?? Colors.white;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          onPressed: (){}, 
          icon: Icon(icondata,color:color,size: 30,
        )),
        if(value>0)
        Text(HumanFormats.numberFormat(value.toDouble()))
      ]
    );
  }
}