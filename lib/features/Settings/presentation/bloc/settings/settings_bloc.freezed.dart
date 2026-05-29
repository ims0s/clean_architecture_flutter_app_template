// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$SettingsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isDarkMode) toggleDarkModeEvent,
    required TResult Function() getStoredThemeEvent,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isDarkMode)? toggleDarkModeEvent,
    TResult? Function()? getStoredThemeEvent,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isDarkMode)? toggleDarkModeEvent,
    TResult Function()? getStoredThemeEvent,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ToggleDarkModeEvent value) toggleDarkModeEvent,
    required TResult Function(_GetStoredThemeEvent value) getStoredThemeEvent,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ToggleDarkModeEvent value)? toggleDarkModeEvent,
    TResult? Function(_GetStoredThemeEvent value)? getStoredThemeEvent,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ToggleDarkModeEvent value)? toggleDarkModeEvent,
    TResult Function(_GetStoredThemeEvent value)? getStoredThemeEvent,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsEventCopyWith<$Res> {
  factory $SettingsEventCopyWith(
    SettingsEvent value,
    $Res Function(SettingsEvent) then,
  ) = _$SettingsEventCopyWithImpl<$Res, SettingsEvent>;
}

/// @nodoc
class _$SettingsEventCopyWithImpl<$Res, $Val extends SettingsEvent>
    implements $SettingsEventCopyWith<$Res> {
  _$SettingsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SettingsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ToggleDarkModeEventImplCopyWith<$Res> {
  factory _$$ToggleDarkModeEventImplCopyWith(
    _$ToggleDarkModeEventImpl value,
    $Res Function(_$ToggleDarkModeEventImpl) then,
  ) = __$$ToggleDarkModeEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isDarkMode});
}

/// @nodoc
class __$$ToggleDarkModeEventImplCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$ToggleDarkModeEventImpl>
    implements _$$ToggleDarkModeEventImplCopyWith<$Res> {
  __$$ToggleDarkModeEventImplCopyWithImpl(
    _$ToggleDarkModeEventImpl _value,
    $Res Function(_$ToggleDarkModeEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SettingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? isDarkMode = null}) {
    return _then(
      _$ToggleDarkModeEventImpl(
        null == isDarkMode
            ? _value.isDarkMode
            : isDarkMode // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc

class _$ToggleDarkModeEventImpl implements _ToggleDarkModeEvent {
  _$ToggleDarkModeEventImpl(this.isDarkMode);

  @override
  final bool isDarkMode;

  @override
  String toString() {
    return 'SettingsEvent.toggleDarkModeEvent(isDarkMode: $isDarkMode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToggleDarkModeEventImpl &&
            (identical(other.isDarkMode, isDarkMode) ||
                other.isDarkMode == isDarkMode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isDarkMode);

  /// Create a copy of SettingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ToggleDarkModeEventImplCopyWith<_$ToggleDarkModeEventImpl> get copyWith =>
      __$$ToggleDarkModeEventImplCopyWithImpl<_$ToggleDarkModeEventImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isDarkMode) toggleDarkModeEvent,
    required TResult Function() getStoredThemeEvent,
  }) {
    return toggleDarkModeEvent(isDarkMode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isDarkMode)? toggleDarkModeEvent,
    TResult? Function()? getStoredThemeEvent,
  }) {
    return toggleDarkModeEvent?.call(isDarkMode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isDarkMode)? toggleDarkModeEvent,
    TResult Function()? getStoredThemeEvent,
    required TResult orElse(),
  }) {
    if (toggleDarkModeEvent != null) {
      return toggleDarkModeEvent(isDarkMode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ToggleDarkModeEvent value) toggleDarkModeEvent,
    required TResult Function(_GetStoredThemeEvent value) getStoredThemeEvent,
  }) {
    return toggleDarkModeEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ToggleDarkModeEvent value)? toggleDarkModeEvent,
    TResult? Function(_GetStoredThemeEvent value)? getStoredThemeEvent,
  }) {
    return toggleDarkModeEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ToggleDarkModeEvent value)? toggleDarkModeEvent,
    TResult Function(_GetStoredThemeEvent value)? getStoredThemeEvent,
    required TResult orElse(),
  }) {
    if (toggleDarkModeEvent != null) {
      return toggleDarkModeEvent(this);
    }
    return orElse();
  }
}

abstract class _ToggleDarkModeEvent implements SettingsEvent {
  factory _ToggleDarkModeEvent(final bool isDarkMode) =
      _$ToggleDarkModeEventImpl;

  bool get isDarkMode;

  /// Create a copy of SettingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ToggleDarkModeEventImplCopyWith<_$ToggleDarkModeEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetStoredThemeEventImplCopyWith<$Res> {
  factory _$$GetStoredThemeEventImplCopyWith(
    _$GetStoredThemeEventImpl value,
    $Res Function(_$GetStoredThemeEventImpl) then,
  ) = __$$GetStoredThemeEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetStoredThemeEventImplCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$GetStoredThemeEventImpl>
    implements _$$GetStoredThemeEventImplCopyWith<$Res> {
  __$$GetStoredThemeEventImplCopyWithImpl(
    _$GetStoredThemeEventImpl _value,
    $Res Function(_$GetStoredThemeEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SettingsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetStoredThemeEventImpl implements _GetStoredThemeEvent {
  _$GetStoredThemeEventImpl();

  @override
  String toString() {
    return 'SettingsEvent.getStoredThemeEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetStoredThemeEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isDarkMode) toggleDarkModeEvent,
    required TResult Function() getStoredThemeEvent,
  }) {
    return getStoredThemeEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isDarkMode)? toggleDarkModeEvent,
    TResult? Function()? getStoredThemeEvent,
  }) {
    return getStoredThemeEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isDarkMode)? toggleDarkModeEvent,
    TResult Function()? getStoredThemeEvent,
    required TResult orElse(),
  }) {
    if (getStoredThemeEvent != null) {
      return getStoredThemeEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ToggleDarkModeEvent value) toggleDarkModeEvent,
    required TResult Function(_GetStoredThemeEvent value) getStoredThemeEvent,
  }) {
    return getStoredThemeEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ToggleDarkModeEvent value)? toggleDarkModeEvent,
    TResult? Function(_GetStoredThemeEvent value)? getStoredThemeEvent,
  }) {
    return getStoredThemeEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ToggleDarkModeEvent value)? toggleDarkModeEvent,
    TResult Function(_GetStoredThemeEvent value)? getStoredThemeEvent,
    required TResult orElse(),
  }) {
    if (getStoredThemeEvent != null) {
      return getStoredThemeEvent(this);
    }
    return orElse();
  }
}

abstract class _GetStoredThemeEvent implements SettingsEvent {
  factory _GetStoredThemeEvent() = _$GetStoredThemeEventImpl;
}

/// @nodoc
mixin _$SettingsState {
  bool get isDarkMode => throw _privateConstructorUsedError;
  ThemeData? get themeMode => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isDarkMode, ThemeData? themeMode)
    settingsFlowState,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isDarkMode, ThemeData? themeMode)? settingsFlowState,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isDarkMode, ThemeData? themeMode)? settingsFlowState,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SettingsState value) settingsFlowState,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SettingsState value)? settingsFlowState,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SettingsState value)? settingsFlowState,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SettingsStateCopyWith<SettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsStateCopyWith<$Res> {
  factory $SettingsStateCopyWith(
    SettingsState value,
    $Res Function(SettingsState) then,
  ) = _$SettingsStateCopyWithImpl<$Res, SettingsState>;
  @useResult
  $Res call({bool isDarkMode, ThemeData? themeMode});
}

/// @nodoc
class _$SettingsStateCopyWithImpl<$Res, $Val extends SettingsState>
    implements $SettingsStateCopyWith<$Res> {
  _$SettingsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? isDarkMode = null, Object? themeMode = freezed}) {
    return _then(
      _value.copyWith(
            isDarkMode: null == isDarkMode
                ? _value.isDarkMode
                : isDarkMode // ignore: cast_nullable_to_non_nullable
                      as bool,
            themeMode: freezed == themeMode
                ? _value.themeMode
                : themeMode // ignore: cast_nullable_to_non_nullable
                      as ThemeData?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SettingsStateImplCopyWith<$Res>
    implements $SettingsStateCopyWith<$Res> {
  factory _$$SettingsStateImplCopyWith(
    _$SettingsStateImpl value,
    $Res Function(_$SettingsStateImpl) then,
  ) = __$$SettingsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isDarkMode, ThemeData? themeMode});
}

/// @nodoc
class __$$SettingsStateImplCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res, _$SettingsStateImpl>
    implements _$$SettingsStateImplCopyWith<$Res> {
  __$$SettingsStateImplCopyWithImpl(
    _$SettingsStateImpl _value,
    $Res Function(_$SettingsStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? isDarkMode = null, Object? themeMode = freezed}) {
    return _then(
      _$SettingsStateImpl(
        isDarkMode: null == isDarkMode
            ? _value.isDarkMode
            : isDarkMode // ignore: cast_nullable_to_non_nullable
                  as bool,
        themeMode: freezed == themeMode
            ? _value.themeMode
            : themeMode // ignore: cast_nullable_to_non_nullable
                  as ThemeData?,
      ),
    );
  }
}

/// @nodoc

class _$SettingsStateImpl implements _SettingsState {
  const _$SettingsStateImpl({required this.isDarkMode, this.themeMode});

  @override
  final bool isDarkMode;
  @override
  final ThemeData? themeMode;

  @override
  String toString() {
    return 'SettingsState.settingsFlowState(isDarkMode: $isDarkMode, themeMode: $themeMode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsStateImpl &&
            (identical(other.isDarkMode, isDarkMode) ||
                other.isDarkMode == isDarkMode) &&
            (identical(other.themeMode, themeMode) ||
                other.themeMode == themeMode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isDarkMode, themeMode);

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingsStateImplCopyWith<_$SettingsStateImpl> get copyWith =>
      __$$SettingsStateImplCopyWithImpl<_$SettingsStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isDarkMode, ThemeData? themeMode)
    settingsFlowState,
  }) {
    return settingsFlowState(isDarkMode, themeMode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isDarkMode, ThemeData? themeMode)? settingsFlowState,
  }) {
    return settingsFlowState?.call(isDarkMode, themeMode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isDarkMode, ThemeData? themeMode)? settingsFlowState,
    required TResult orElse(),
  }) {
    if (settingsFlowState != null) {
      return settingsFlowState(isDarkMode, themeMode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SettingsState value) settingsFlowState,
  }) {
    return settingsFlowState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SettingsState value)? settingsFlowState,
  }) {
    return settingsFlowState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SettingsState value)? settingsFlowState,
    required TResult orElse(),
  }) {
    if (settingsFlowState != null) {
      return settingsFlowState(this);
    }
    return orElse();
  }
}

abstract class _SettingsState implements SettingsState {
  const factory _SettingsState({
    required final bool isDarkMode,
    final ThemeData? themeMode,
  }) = _$SettingsStateImpl;

  @override
  bool get isDarkMode;
  @override
  ThemeData? get themeMode;

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SettingsStateImplCopyWith<_$SettingsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
