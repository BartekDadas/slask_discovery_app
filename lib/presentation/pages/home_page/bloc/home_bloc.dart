import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:slask_exercise/core/const/consts.dart';
import 'package:slask_exercise/presentation/pages/home_page/model/bottom_item.dart';
import 'package:slask_exercise/presentation/pages/home_page/model/trip_item.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeState.initial()) {
    on<HomeEvent>((event, emit) async {
      event.map(
        initial: (value) => _inital(value, emit),
        bottomSheetChanged: (value) => _onBottomSheetChanged(value, emit),
        floatingButtonVisibilityChanged: (value) =>
            _onFloatingButtonVisibilityChanged(value, emit),
      );
    });
  }

  Future<void> _onFloatingButtonVisibilityChanged(
      _FloatingButtonVisibilityChanged event, Emitter<HomeState> emit) async {
    emit(state.copyWith(
        isFloatingButtonVisible: !state.isFloatingButtonVisible));
  }

  Future<void> _inital(
    _Initial event,
    Emitter<HomeState> emit,
  ) async {
    emit(state.copyWith(
      bottomItems: [
        BottomItem(
          title: Constants.homeLabel,
          iconData: Icons.home_outlined,
        ),
        BottomItem(
          title: Constants.newsLabel,
          iconData: Icons.article_outlined,
        ),
        BottomItem(
          title: Constants.calendarLabel,
          iconData: Icons.calendar_month_outlined,
        ),
        BottomItem(
          title: Constants.mapLabel,
          iconData: Icons.map_outlined,
        ),
      ],
      tripItems: [
        TripItem(
          title: Constants.nameOne,
          imageUrl: '${Constants.imagesPath}/museum Medium.jpeg',
        ),
        TripItem(
          title: Constants.nameTwo,
          imageUrl: '${Constants.imagesPath}/carboneum Medium.jpeg',
        ),
        TripItem(
          title: Constants.nameOne,
          imageUrl: '${Constants.imagesPath}/opera Medium.jpeg',
        ),
        TripItem(
          isFavorite: true,
          title: Constants.nameTwo,
          imageUrl: '${Constants.imagesPath}/kopice Medium.jpeg',
        ),
        TripItem(
          isFavorite: true,
          title: Constants.nameOne,
          imageUrl: '${Constants.imagesPath}/opera Medium.jpeg',
        ),
        TripItem(
          isFavorite: true,
          title: Constants.nameTwo,
          imageUrl: '${Constants.imagesPath}/stadium Medium.jpeg',
        ),
        TripItem(
          title: Constants.nameOne,
          imageUrl: '${Constants.imagesPath}/elephant Medium.jpeg',
        ),
        TripItem(
          title: Constants.nameTwo,
          imageUrl: '${Constants.imagesPath}/planetarium Medium.jpeg',
        ),
        TripItem(
          title: Constants.nameOne,
          imageUrl: '${Constants.imagesPath}/lights Medium.jpeg',
        ),
      ],
    ));
  }

  void _onBottomSheetChanged(
      _BottomSheetChanged event, Emitter<HomeState> emit) {
    emit(state.copyWith(isExpandedAppBar: !state.isExpandedAppBar));
  }
}
