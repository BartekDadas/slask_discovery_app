import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:video_player/video_player.dart';

part 'video_player_event.dart';
part 'video_player_state.dart';
part 'video_player_bloc.freezed.dart';

class VideoPlayerBloc extends Bloc<VideoPlayerEvent, VideoPlayerState> {
  VideoPlayerBloc() : super(const VideoPlayerState.initial()) {
    on<_Initialize>(_onInitialize);
    on<_Play>(_onPlay);
    on<_Pause>(_onPause);
  }

  Future<void> _onInitialize(
      _Initialize event, Emitter<VideoPlayerState> emit) async {
    emit(const VideoPlayerState.loading());
    try {
      final controller = VideoPlayerController.asset(event.videoPath)
        ..initialize().then((_) {
          // Automatically play the video after initialization
          add(const VideoPlayerEvent.play());
        });
      emit(VideoPlayerState.loaded(controller));
    } catch (e) {
      emit(VideoPlayerState.error("Failed to load video: $e"));
    }
  }

  Future<void> _onPlay(_Play event, Emitter<VideoPlayerState> emit) async {
    if (state is _Loaded) {
      final controller = (state as _Loaded).controller;
      controller.play();
      emit(VideoPlayerState.loaded(controller));
    }
  }

  Future<void> _onPause(_Pause event, Emitter<VideoPlayerState> emit) async {
    if (state is _Loaded) {
      final controller = (state as _Loaded).controller;
      controller.pause();
      emit(VideoPlayerState.loaded(controller));
    }
  }

  @override
  Future<void> close() async {
    if (state is _Loaded) {
      (state as _Loaded).controller.dispose();
    }
    return super.close();
  }
}
