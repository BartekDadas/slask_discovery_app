import 'package:get_it/get_it.dart';
import 'package:slask_exercise/presentation/pages/home_page/bloc/home_bloc.dart';
import 'package:slask_exercise/presentation/widgets/video_player/bloc/video_player_bloc.dart';

final _getIt = GetIt.instance;

void initDependencyInjection() async {
  // Bloc
  _getIt.registerFactory<VideoPlayerBloc>(() => VideoPlayerBloc());
  _getIt.registerFactory<HomeBloc>(() => HomeBloc());
}
