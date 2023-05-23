import 'package:flutter/material.dart';
import 'package:tok_tik/domain/entities/video_post.dart';
import 'package:tok_tik/domain/repositories/video_posts_repository.dart';
import 'package:tok_tik/infrastructure/models/local_video_model.dart';
import 'package:tok_tik/shared/data/local_video_post.dart';

class DiscoverProvider extends ChangeNotifier {
  //TODO: Repository, DataSource

  final VideoPostsRepository videosRepository;

  bool initialLoading = true;
  List<VideoPost> videos = [];

  DiscoverProvider(this.videosRepository);

  Future<void> loadNextPage() async {
    //await Future.delayed(const Duration(milliseconds: 2));

    //final List<VideoPost> newVideos = videoPosts
    //    .map((video) => LocalVideoModel.fromJson(video).toVideoPostEntity())
    //    .toList();

    final newVideos = await videosRepository.getTrendingVideosByPage(1);

    videos.addAll(newVideos);
    initialLoading = false;

    notifyListeners();
  }
}
