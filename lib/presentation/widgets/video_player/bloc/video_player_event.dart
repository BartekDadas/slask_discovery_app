
part of 'video_player_bloc.dart';

@freezed
class VideoPlayerEvent with _$VideoPlayerEvent {
  const factory VideoPlayerEvent.initialize(String videoPath) = _Initialize;
  const factory VideoPlayerEvent.play() = _Play;
  const factory VideoPlayerEvent.pause() = _Pause;
}
