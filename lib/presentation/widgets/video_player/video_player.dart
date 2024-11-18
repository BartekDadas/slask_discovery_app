import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:video_player/video_player.dart';

import 'bloc/video_player_bloc.dart';

class VideoMediaPlayer extends StatelessWidget {
  const VideoMediaPlayer({required this.assetDirectoryPath, super.key});
  final String assetDirectoryPath;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetIt.I.get<VideoPlayerBloc>()
        ..add(VideoPlayerEvent.initialize(assetDirectoryPath)),
      child: BlocBuilder<VideoPlayerBloc, VideoPlayerState>(
        builder: (context, state) {
          return state.when(
            initial: () => const Center(child: Text("Initialize the video")),
            loading: () => const Center(child: CircularProgressIndicator()),
            loaded: (controller) => AspectRatio(
              aspectRatio: controller.value.aspectRatio,
              child: VideoPlayer(controller),
            ),
            error: (message) => Center(child: Text(message)),
          );
        },
      ),
    );
  }
}
