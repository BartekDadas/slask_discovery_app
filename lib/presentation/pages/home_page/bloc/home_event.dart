part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.initial() = _Initial;
  const factory HomeEvent.bottomSheetChanged(double extend) = _BottomSheetChanged;
  const factory HomeEvent.floatingButtonVisibilityChanged() = _FloatingButtonVisibilityChanged;
}