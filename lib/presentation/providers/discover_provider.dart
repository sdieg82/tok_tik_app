import 'package:flutter/material.dart';
import 'package:tok_tik_app/domain/entities/video_post.dart';
import 'package:tok_tik_app/infrastructure/models/local_video_model.dart';
import 'package:tok_tik_app/shared/local_video_posts.dart';

class DiscoverProvider extends ChangeNotifier {

  //TODO: Repository, Data Source 
  bool initialLoading=true;
  List<VideoPost> videos=[
   
  ];

  Future<void> loadNextPage() async{
     await Future.delayed(const Duration(seconds:2));

     final List<VideoPost> newVideos=videoPosts.map (
      (video)=>LocalVideoModel.fromJsonMap(video).toVideoPostEntity()
     ).toList();
     videos.addAll(newVideos);
     initialLoading=false;
     notifyListeners(); 
  }

}