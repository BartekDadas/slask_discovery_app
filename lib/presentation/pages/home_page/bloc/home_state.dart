part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  factory HomeState({
    required int currentFilterIndex,
    required List<TripItem> tripItems,
    required List<BottomItem> bottomItems,
    required bool isExpandedAppBar,
    required double bottomSheetExtend,
    ScrollController? scrollController,
    required bool isFloatingButtonVisible,
  }) = _HomeState;

  factory HomeState.initial() => HomeState(
      currentFilterIndex: 0,
      tripItems: [],
      isExpandedAppBar: false,
      bottomSheetExtend: 0.0,
      bottomItems: [],
      isFloatingButtonVisible: false,
  );
}