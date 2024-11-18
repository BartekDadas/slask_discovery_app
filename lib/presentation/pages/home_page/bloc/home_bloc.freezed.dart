// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(double extend) bottomSheetChanged,
    required TResult Function() floatingButtonVisibilityChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(double extend)? bottomSheetChanged,
    TResult? Function()? floatingButtonVisibilityChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(double extend)? bottomSheetChanged,
    TResult Function()? floatingButtonVisibilityChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_BottomSheetChanged value) bottomSheetChanged,
    required TResult Function(_FloatingButtonVisibilityChanged value)
        floatingButtonVisibilityChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_BottomSheetChanged value)? bottomSheetChanged,
    TResult? Function(_FloatingButtonVisibilityChanged value)?
        floatingButtonVisibilityChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_BottomSheetChanged value)? bottomSheetChanged,
    TResult Function(_FloatingButtonVisibilityChanged value)?
        floatingButtonVisibilityChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'HomeEvent.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(double extend) bottomSheetChanged,
    required TResult Function() floatingButtonVisibilityChanged,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(double extend)? bottomSheetChanged,
    TResult? Function()? floatingButtonVisibilityChanged,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(double extend)? bottomSheetChanged,
    TResult Function()? floatingButtonVisibilityChanged,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_BottomSheetChanged value) bottomSheetChanged,
    required TResult Function(_FloatingButtonVisibilityChanged value)
        floatingButtonVisibilityChanged,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_BottomSheetChanged value)? bottomSheetChanged,
    TResult? Function(_FloatingButtonVisibilityChanged value)?
        floatingButtonVisibilityChanged,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_BottomSheetChanged value)? bottomSheetChanged,
    TResult Function(_FloatingButtonVisibilityChanged value)?
        floatingButtonVisibilityChanged,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements HomeEvent {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$BottomSheetChangedImplCopyWith<$Res> {
  factory _$$BottomSheetChangedImplCopyWith(_$BottomSheetChangedImpl value,
          $Res Function(_$BottomSheetChangedImpl) then) =
      __$$BottomSheetChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double extend});
}

/// @nodoc
class __$$BottomSheetChangedImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$BottomSheetChangedImpl>
    implements _$$BottomSheetChangedImplCopyWith<$Res> {
  __$$BottomSheetChangedImplCopyWithImpl(_$BottomSheetChangedImpl _value,
      $Res Function(_$BottomSheetChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? extend = null,
  }) {
    return _then(_$BottomSheetChangedImpl(
      null == extend
          ? _value.extend
          : extend // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$BottomSheetChangedImpl implements _BottomSheetChanged {
  const _$BottomSheetChangedImpl(this.extend);

  @override
  final double extend;

  @override
  String toString() {
    return 'HomeEvent.bottomSheetChanged(extend: $extend)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BottomSheetChangedImpl &&
            (identical(other.extend, extend) || other.extend == extend));
  }

  @override
  int get hashCode => Object.hash(runtimeType, extend);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BottomSheetChangedImplCopyWith<_$BottomSheetChangedImpl> get copyWith =>
      __$$BottomSheetChangedImplCopyWithImpl<_$BottomSheetChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(double extend) bottomSheetChanged,
    required TResult Function() floatingButtonVisibilityChanged,
  }) {
    return bottomSheetChanged(extend);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(double extend)? bottomSheetChanged,
    TResult? Function()? floatingButtonVisibilityChanged,
  }) {
    return bottomSheetChanged?.call(extend);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(double extend)? bottomSheetChanged,
    TResult Function()? floatingButtonVisibilityChanged,
    required TResult orElse(),
  }) {
    if (bottomSheetChanged != null) {
      return bottomSheetChanged(extend);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_BottomSheetChanged value) bottomSheetChanged,
    required TResult Function(_FloatingButtonVisibilityChanged value)
        floatingButtonVisibilityChanged,
  }) {
    return bottomSheetChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_BottomSheetChanged value)? bottomSheetChanged,
    TResult? Function(_FloatingButtonVisibilityChanged value)?
        floatingButtonVisibilityChanged,
  }) {
    return bottomSheetChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_BottomSheetChanged value)? bottomSheetChanged,
    TResult Function(_FloatingButtonVisibilityChanged value)?
        floatingButtonVisibilityChanged,
    required TResult orElse(),
  }) {
    if (bottomSheetChanged != null) {
      return bottomSheetChanged(this);
    }
    return orElse();
  }
}

abstract class _BottomSheetChanged implements HomeEvent {
  const factory _BottomSheetChanged(final double extend) =
      _$BottomSheetChangedImpl;

  double get extend;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BottomSheetChangedImplCopyWith<_$BottomSheetChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FloatingButtonVisibilityChangedImplCopyWith<$Res> {
  factory _$$FloatingButtonVisibilityChangedImplCopyWith(
          _$FloatingButtonVisibilityChangedImpl value,
          $Res Function(_$FloatingButtonVisibilityChangedImpl) then) =
      __$$FloatingButtonVisibilityChangedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FloatingButtonVisibilityChangedImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$FloatingButtonVisibilityChangedImpl>
    implements _$$FloatingButtonVisibilityChangedImplCopyWith<$Res> {
  __$$FloatingButtonVisibilityChangedImplCopyWithImpl(
      _$FloatingButtonVisibilityChangedImpl _value,
      $Res Function(_$FloatingButtonVisibilityChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FloatingButtonVisibilityChangedImpl
    implements _FloatingButtonVisibilityChanged {
  const _$FloatingButtonVisibilityChangedImpl();

  @override
  String toString() {
    return 'HomeEvent.floatingButtonVisibilityChanged()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FloatingButtonVisibilityChangedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(double extend) bottomSheetChanged,
    required TResult Function() floatingButtonVisibilityChanged,
  }) {
    return floatingButtonVisibilityChanged();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(double extend)? bottomSheetChanged,
    TResult? Function()? floatingButtonVisibilityChanged,
  }) {
    return floatingButtonVisibilityChanged?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(double extend)? bottomSheetChanged,
    TResult Function()? floatingButtonVisibilityChanged,
    required TResult orElse(),
  }) {
    if (floatingButtonVisibilityChanged != null) {
      return floatingButtonVisibilityChanged();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_BottomSheetChanged value) bottomSheetChanged,
    required TResult Function(_FloatingButtonVisibilityChanged value)
        floatingButtonVisibilityChanged,
  }) {
    return floatingButtonVisibilityChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_BottomSheetChanged value)? bottomSheetChanged,
    TResult? Function(_FloatingButtonVisibilityChanged value)?
        floatingButtonVisibilityChanged,
  }) {
    return floatingButtonVisibilityChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_BottomSheetChanged value)? bottomSheetChanged,
    TResult Function(_FloatingButtonVisibilityChanged value)?
        floatingButtonVisibilityChanged,
    required TResult orElse(),
  }) {
    if (floatingButtonVisibilityChanged != null) {
      return floatingButtonVisibilityChanged(this);
    }
    return orElse();
  }
}

abstract class _FloatingButtonVisibilityChanged implements HomeEvent {
  const factory _FloatingButtonVisibilityChanged() =
      _$FloatingButtonVisibilityChangedImpl;
}

/// @nodoc
mixin _$HomeState {
  int get currentFilterIndex => throw _privateConstructorUsedError;
  List<TripItem> get tripItems => throw _privateConstructorUsedError;
  List<BottomItem> get bottomItems => throw _privateConstructorUsedError;
  bool get isExpandedAppBar => throw _privateConstructorUsedError;
  double get bottomSheetExtend => throw _privateConstructorUsedError;
  ScrollController? get scrollController => throw _privateConstructorUsedError;
  bool get isFloatingButtonVisible => throw _privateConstructorUsedError;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {int currentFilterIndex,
      List<TripItem> tripItems,
      List<BottomItem> bottomItems,
      bool isExpandedAppBar,
      double bottomSheetExtend,
      ScrollController? scrollController,
      bool isFloatingButtonVisible});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentFilterIndex = null,
    Object? tripItems = null,
    Object? bottomItems = null,
    Object? isExpandedAppBar = null,
    Object? bottomSheetExtend = null,
    Object? scrollController = freezed,
    Object? isFloatingButtonVisible = null,
  }) {
    return _then(_value.copyWith(
      currentFilterIndex: null == currentFilterIndex
          ? _value.currentFilterIndex
          : currentFilterIndex // ignore: cast_nullable_to_non_nullable
              as int,
      tripItems: null == tripItems
          ? _value.tripItems
          : tripItems // ignore: cast_nullable_to_non_nullable
              as List<TripItem>,
      bottomItems: null == bottomItems
          ? _value.bottomItems
          : bottomItems // ignore: cast_nullable_to_non_nullable
              as List<BottomItem>,
      isExpandedAppBar: null == isExpandedAppBar
          ? _value.isExpandedAppBar
          : isExpandedAppBar // ignore: cast_nullable_to_non_nullable
              as bool,
      bottomSheetExtend: null == bottomSheetExtend
          ? _value.bottomSheetExtend
          : bottomSheetExtend // ignore: cast_nullable_to_non_nullable
              as double,
      scrollController: freezed == scrollController
          ? _value.scrollController
          : scrollController // ignore: cast_nullable_to_non_nullable
              as ScrollController?,
      isFloatingButtonVisible: null == isFloatingButtonVisible
          ? _value.isFloatingButtonVisible
          : isFloatingButtonVisible // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
          _$HomeStateImpl value, $Res Function(_$HomeStateImpl) then) =
      __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int currentFilterIndex,
      List<TripItem> tripItems,
      List<BottomItem> bottomItems,
      bool isExpandedAppBar,
      double bottomSheetExtend,
      ScrollController? scrollController,
      bool isFloatingButtonVisible});
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
      _$HomeStateImpl _value, $Res Function(_$HomeStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentFilterIndex = null,
    Object? tripItems = null,
    Object? bottomItems = null,
    Object? isExpandedAppBar = null,
    Object? bottomSheetExtend = null,
    Object? scrollController = freezed,
    Object? isFloatingButtonVisible = null,
  }) {
    return _then(_$HomeStateImpl(
      currentFilterIndex: null == currentFilterIndex
          ? _value.currentFilterIndex
          : currentFilterIndex // ignore: cast_nullable_to_non_nullable
              as int,
      tripItems: null == tripItems
          ? _value._tripItems
          : tripItems // ignore: cast_nullable_to_non_nullable
              as List<TripItem>,
      bottomItems: null == bottomItems
          ? _value._bottomItems
          : bottomItems // ignore: cast_nullable_to_non_nullable
              as List<BottomItem>,
      isExpandedAppBar: null == isExpandedAppBar
          ? _value.isExpandedAppBar
          : isExpandedAppBar // ignore: cast_nullable_to_non_nullable
              as bool,
      bottomSheetExtend: null == bottomSheetExtend
          ? _value.bottomSheetExtend
          : bottomSheetExtend // ignore: cast_nullable_to_non_nullable
              as double,
      scrollController: freezed == scrollController
          ? _value.scrollController
          : scrollController // ignore: cast_nullable_to_non_nullable
              as ScrollController?,
      isFloatingButtonVisible: null == isFloatingButtonVisible
          ? _value.isFloatingButtonVisible
          : isFloatingButtonVisible // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$HomeStateImpl implements _HomeState {
  _$HomeStateImpl(
      {required this.currentFilterIndex,
      required final List<TripItem> tripItems,
      required final List<BottomItem> bottomItems,
      required this.isExpandedAppBar,
      required this.bottomSheetExtend,
      this.scrollController,
      required this.isFloatingButtonVisible})
      : _tripItems = tripItems,
        _bottomItems = bottomItems;

  @override
  final int currentFilterIndex;
  final List<TripItem> _tripItems;
  @override
  List<TripItem> get tripItems {
    if (_tripItems is EqualUnmodifiableListView) return _tripItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tripItems);
  }

  final List<BottomItem> _bottomItems;
  @override
  List<BottomItem> get bottomItems {
    if (_bottomItems is EqualUnmodifiableListView) return _bottomItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bottomItems);
  }

  @override
  final bool isExpandedAppBar;
  @override
  final double bottomSheetExtend;
  @override
  final ScrollController? scrollController;
  @override
  final bool isFloatingButtonVisible;

  @override
  String toString() {
    return 'HomeState(currentFilterIndex: $currentFilterIndex, tripItems: $tripItems, bottomItems: $bottomItems, isExpandedAppBar: $isExpandedAppBar, bottomSheetExtend: $bottomSheetExtend, scrollController: $scrollController, isFloatingButtonVisible: $isFloatingButtonVisible)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            (identical(other.currentFilterIndex, currentFilterIndex) ||
                other.currentFilterIndex == currentFilterIndex) &&
            const DeepCollectionEquality()
                .equals(other._tripItems, _tripItems) &&
            const DeepCollectionEquality()
                .equals(other._bottomItems, _bottomItems) &&
            (identical(other.isExpandedAppBar, isExpandedAppBar) ||
                other.isExpandedAppBar == isExpandedAppBar) &&
            (identical(other.bottomSheetExtend, bottomSheetExtend) ||
                other.bottomSheetExtend == bottomSheetExtend) &&
            (identical(other.scrollController, scrollController) ||
                other.scrollController == scrollController) &&
            (identical(
                    other.isFloatingButtonVisible, isFloatingButtonVisible) ||
                other.isFloatingButtonVisible == isFloatingButtonVisible));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      currentFilterIndex,
      const DeepCollectionEquality().hash(_tripItems),
      const DeepCollectionEquality().hash(_bottomItems),
      isExpandedAppBar,
      bottomSheetExtend,
      scrollController,
      isFloatingButtonVisible);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  factory _HomeState(
      {required final int currentFilterIndex,
      required final List<TripItem> tripItems,
      required final List<BottomItem> bottomItems,
      required final bool isExpandedAppBar,
      required final double bottomSheetExtend,
      final ScrollController? scrollController,
      required final bool isFloatingButtonVisible}) = _$HomeStateImpl;

  @override
  int get currentFilterIndex;
  @override
  List<TripItem> get tripItems;
  @override
  List<BottomItem> get bottomItems;
  @override
  bool get isExpandedAppBar;
  @override
  double get bottomSheetExtend;
  @override
  ScrollController? get scrollController;
  @override
  bool get isFloatingButtonVisible;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
