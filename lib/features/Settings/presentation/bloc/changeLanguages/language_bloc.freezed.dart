// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'language_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$LanguageChangedState {
  List<String> get language_list => throw _privateConstructorUsedError;
  String get selected_language => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      List<String> language_list,
      String selected_language,
    )
    LanguageFlowState,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<String> language_list, String selected_language)?
    LanguageFlowState,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> language_list, String selected_language)?
    LanguageFlowState,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LanguageChangedStatee value) LanguageFlowState,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LanguageChangedStatee value)? LanguageFlowState,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LanguageChangedStatee value)? LanguageFlowState,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;

  /// Create a copy of LanguageChangedState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LanguageChangedStateCopyWith<LanguageChangedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LanguageChangedStateCopyWith<$Res> {
  factory $LanguageChangedStateCopyWith(
    LanguageChangedState value,
    $Res Function(LanguageChangedState) then,
  ) = _$LanguageChangedStateCopyWithImpl<$Res, LanguageChangedState>;
  @useResult
  $Res call({List<String> language_list, String selected_language});
}

/// @nodoc
class _$LanguageChangedStateCopyWithImpl<
  $Res,
  $Val extends LanguageChangedState
>
    implements $LanguageChangedStateCopyWith<$Res> {
  _$LanguageChangedStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LanguageChangedState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? language_list = null, Object? selected_language = null}) {
    return _then(
      _value.copyWith(
            language_list: null == language_list
                ? _value.language_list
                : language_list // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            selected_language: null == selected_language
                ? _value.selected_language
                : selected_language // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$LanguageChangedStateeImplCopyWith<$Res>
    implements $LanguageChangedStateCopyWith<$Res> {
  factory _$$LanguageChangedStateeImplCopyWith(
    _$LanguageChangedStateeImpl value,
    $Res Function(_$LanguageChangedStateeImpl) then,
  ) = __$$LanguageChangedStateeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> language_list, String selected_language});
}

/// @nodoc
class __$$LanguageChangedStateeImplCopyWithImpl<$Res>
    extends
        _$LanguageChangedStateCopyWithImpl<$Res, _$LanguageChangedStateeImpl>
    implements _$$LanguageChangedStateeImplCopyWith<$Res> {
  __$$LanguageChangedStateeImplCopyWithImpl(
    _$LanguageChangedStateeImpl _value,
    $Res Function(_$LanguageChangedStateeImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LanguageChangedState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? language_list = null, Object? selected_language = null}) {
    return _then(
      _$LanguageChangedStateeImpl(
        language_list: null == language_list
            ? _value._language_list
            : language_list // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        selected_language: null == selected_language
            ? _value.selected_language
            : selected_language // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$LanguageChangedStateeImpl implements _LanguageChangedStatee {
  const _$LanguageChangedStateeImpl({
    required final List<String> language_list,
    required this.selected_language,
  }) : _language_list = language_list;

  final List<String> _language_list;
  @override
  List<String> get language_list {
    if (_language_list is EqualUnmodifiableListView) return _language_list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_language_list);
  }

  @override
  final String selected_language;

  @override
  String toString() {
    return 'LanguageChangedState.LanguageFlowState(language_list: $language_list, selected_language: $selected_language)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LanguageChangedStateeImpl &&
            const DeepCollectionEquality().equals(
              other._language_list,
              _language_list,
            ) &&
            (identical(other.selected_language, selected_language) ||
                other.selected_language == selected_language));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_language_list),
    selected_language,
  );

  /// Create a copy of LanguageChangedState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LanguageChangedStateeImplCopyWith<_$LanguageChangedStateeImpl>
  get copyWith =>
      __$$LanguageChangedStateeImplCopyWithImpl<_$LanguageChangedStateeImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      List<String> language_list,
      String selected_language,
    )
    LanguageFlowState,
  }) {
    return LanguageFlowState(language_list, selected_language);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<String> language_list, String selected_language)?
    LanguageFlowState,
  }) {
    return LanguageFlowState?.call(language_list, selected_language);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> language_list, String selected_language)?
    LanguageFlowState,
    required TResult orElse(),
  }) {
    if (LanguageFlowState != null) {
      return LanguageFlowState(language_list, selected_language);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LanguageChangedStatee value) LanguageFlowState,
  }) {
    return LanguageFlowState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LanguageChangedStatee value)? LanguageFlowState,
  }) {
    return LanguageFlowState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LanguageChangedStatee value)? LanguageFlowState,
    required TResult orElse(),
  }) {
    if (LanguageFlowState != null) {
      return LanguageFlowState(this);
    }
    return orElse();
  }
}

abstract class _LanguageChangedStatee implements LanguageChangedState {
  const factory _LanguageChangedStatee({
    required final List<String> language_list,
    required final String selected_language,
  }) = _$LanguageChangedStateeImpl;

  @override
  List<String> get language_list;
  @override
  String get selected_language;

  /// Create a copy of LanguageChangedState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LanguageChangedStateeImplCopyWith<_$LanguageChangedStateeImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChangeLanguageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String lang) NewLanguageSelectedEvent,
    required TResult Function() GetAllLanguagesEvent,
    required TResult Function() GetUserLanguageEvent,
    required TResult Function(String lang) AppLanguageChangedEvent,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String lang)? NewLanguageSelectedEvent,
    TResult? Function()? GetAllLanguagesEvent,
    TResult? Function()? GetUserLanguageEvent,
    TResult? Function(String lang)? AppLanguageChangedEvent,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String lang)? NewLanguageSelectedEvent,
    TResult Function()? GetAllLanguagesEvent,
    TResult Function()? GetUserLanguageEvent,
    TResult Function(String lang)? AppLanguageChangedEvent,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NewLanguageSelectedEvent value)
    NewLanguageSelectedEvent,
    required TResult Function(_GetAllLanguagesEvent value) GetAllLanguagesEvent,
    required TResult Function(_GetAppLanguageEvent value) GetUserLanguageEvent,
    required TResult Function(_ChangeAppLanguageEvent value)
    AppLanguageChangedEvent,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NewLanguageSelectedEvent value)?
    NewLanguageSelectedEvent,
    TResult? Function(_GetAllLanguagesEvent value)? GetAllLanguagesEvent,
    TResult? Function(_GetAppLanguageEvent value)? GetUserLanguageEvent,
    TResult? Function(_ChangeAppLanguageEvent value)? AppLanguageChangedEvent,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewLanguageSelectedEvent value)? NewLanguageSelectedEvent,
    TResult Function(_GetAllLanguagesEvent value)? GetAllLanguagesEvent,
    TResult Function(_GetAppLanguageEvent value)? GetUserLanguageEvent,
    TResult Function(_ChangeAppLanguageEvent value)? AppLanguageChangedEvent,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangeLanguageEventCopyWith<$Res> {
  factory $ChangeLanguageEventCopyWith(
    ChangeLanguageEvent value,
    $Res Function(ChangeLanguageEvent) then,
  ) = _$ChangeLanguageEventCopyWithImpl<$Res, ChangeLanguageEvent>;
}

/// @nodoc
class _$ChangeLanguageEventCopyWithImpl<$Res, $Val extends ChangeLanguageEvent>
    implements $ChangeLanguageEventCopyWith<$Res> {
  _$ChangeLanguageEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChangeLanguageEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$NewLanguageSelectedEventImplCopyWith<$Res> {
  factory _$$NewLanguageSelectedEventImplCopyWith(
    _$NewLanguageSelectedEventImpl value,
    $Res Function(_$NewLanguageSelectedEventImpl) then,
  ) = __$$NewLanguageSelectedEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String lang});
}

/// @nodoc
class __$$NewLanguageSelectedEventImplCopyWithImpl<$Res>
    extends
        _$ChangeLanguageEventCopyWithImpl<$Res, _$NewLanguageSelectedEventImpl>
    implements _$$NewLanguageSelectedEventImplCopyWith<$Res> {
  __$$NewLanguageSelectedEventImplCopyWithImpl(
    _$NewLanguageSelectedEventImpl _value,
    $Res Function(_$NewLanguageSelectedEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChangeLanguageEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? lang = null}) {
    return _then(
      _$NewLanguageSelectedEventImpl(
        null == lang
            ? _value.lang
            : lang // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$NewLanguageSelectedEventImpl implements _NewLanguageSelectedEvent {
  _$NewLanguageSelectedEventImpl(this.lang);

  @override
  final String lang;

  @override
  String toString() {
    return 'ChangeLanguageEvent.NewLanguageSelectedEvent(lang: $lang)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewLanguageSelectedEventImpl &&
            (identical(other.lang, lang) || other.lang == lang));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lang);

  /// Create a copy of ChangeLanguageEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NewLanguageSelectedEventImplCopyWith<_$NewLanguageSelectedEventImpl>
  get copyWith =>
      __$$NewLanguageSelectedEventImplCopyWithImpl<
        _$NewLanguageSelectedEventImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String lang) NewLanguageSelectedEvent,
    required TResult Function() GetAllLanguagesEvent,
    required TResult Function() GetUserLanguageEvent,
    required TResult Function(String lang) AppLanguageChangedEvent,
  }) {
    return NewLanguageSelectedEvent(lang);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String lang)? NewLanguageSelectedEvent,
    TResult? Function()? GetAllLanguagesEvent,
    TResult? Function()? GetUserLanguageEvent,
    TResult? Function(String lang)? AppLanguageChangedEvent,
  }) {
    return NewLanguageSelectedEvent?.call(lang);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String lang)? NewLanguageSelectedEvent,
    TResult Function()? GetAllLanguagesEvent,
    TResult Function()? GetUserLanguageEvent,
    TResult Function(String lang)? AppLanguageChangedEvent,
    required TResult orElse(),
  }) {
    if (NewLanguageSelectedEvent != null) {
      return NewLanguageSelectedEvent(lang);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NewLanguageSelectedEvent value)
    NewLanguageSelectedEvent,
    required TResult Function(_GetAllLanguagesEvent value) GetAllLanguagesEvent,
    required TResult Function(_GetAppLanguageEvent value) GetUserLanguageEvent,
    required TResult Function(_ChangeAppLanguageEvent value)
    AppLanguageChangedEvent,
  }) {
    return NewLanguageSelectedEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NewLanguageSelectedEvent value)?
    NewLanguageSelectedEvent,
    TResult? Function(_GetAllLanguagesEvent value)? GetAllLanguagesEvent,
    TResult? Function(_GetAppLanguageEvent value)? GetUserLanguageEvent,
    TResult? Function(_ChangeAppLanguageEvent value)? AppLanguageChangedEvent,
  }) {
    return NewLanguageSelectedEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewLanguageSelectedEvent value)? NewLanguageSelectedEvent,
    TResult Function(_GetAllLanguagesEvent value)? GetAllLanguagesEvent,
    TResult Function(_GetAppLanguageEvent value)? GetUserLanguageEvent,
    TResult Function(_ChangeAppLanguageEvent value)? AppLanguageChangedEvent,
    required TResult orElse(),
  }) {
    if (NewLanguageSelectedEvent != null) {
      return NewLanguageSelectedEvent(this);
    }
    return orElse();
  }
}

abstract class _NewLanguageSelectedEvent implements ChangeLanguageEvent {
  factory _NewLanguageSelectedEvent(final String lang) =
      _$NewLanguageSelectedEventImpl;

  String get lang;

  /// Create a copy of ChangeLanguageEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NewLanguageSelectedEventImplCopyWith<_$NewLanguageSelectedEventImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetAllLanguagesEventImplCopyWith<$Res> {
  factory _$$GetAllLanguagesEventImplCopyWith(
    _$GetAllLanguagesEventImpl value,
    $Res Function(_$GetAllLanguagesEventImpl) then,
  ) = __$$GetAllLanguagesEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAllLanguagesEventImplCopyWithImpl<$Res>
    extends _$ChangeLanguageEventCopyWithImpl<$Res, _$GetAllLanguagesEventImpl>
    implements _$$GetAllLanguagesEventImplCopyWith<$Res> {
  __$$GetAllLanguagesEventImplCopyWithImpl(
    _$GetAllLanguagesEventImpl _value,
    $Res Function(_$GetAllLanguagesEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChangeLanguageEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetAllLanguagesEventImpl implements _GetAllLanguagesEvent {
  _$GetAllLanguagesEventImpl();

  @override
  String toString() {
    return 'ChangeLanguageEvent.GetAllLanguagesEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllLanguagesEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String lang) NewLanguageSelectedEvent,
    required TResult Function() GetAllLanguagesEvent,
    required TResult Function() GetUserLanguageEvent,
    required TResult Function(String lang) AppLanguageChangedEvent,
  }) {
    return GetAllLanguagesEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String lang)? NewLanguageSelectedEvent,
    TResult? Function()? GetAllLanguagesEvent,
    TResult? Function()? GetUserLanguageEvent,
    TResult? Function(String lang)? AppLanguageChangedEvent,
  }) {
    return GetAllLanguagesEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String lang)? NewLanguageSelectedEvent,
    TResult Function()? GetAllLanguagesEvent,
    TResult Function()? GetUserLanguageEvent,
    TResult Function(String lang)? AppLanguageChangedEvent,
    required TResult orElse(),
  }) {
    if (GetAllLanguagesEvent != null) {
      return GetAllLanguagesEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NewLanguageSelectedEvent value)
    NewLanguageSelectedEvent,
    required TResult Function(_GetAllLanguagesEvent value) GetAllLanguagesEvent,
    required TResult Function(_GetAppLanguageEvent value) GetUserLanguageEvent,
    required TResult Function(_ChangeAppLanguageEvent value)
    AppLanguageChangedEvent,
  }) {
    return GetAllLanguagesEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NewLanguageSelectedEvent value)?
    NewLanguageSelectedEvent,
    TResult? Function(_GetAllLanguagesEvent value)? GetAllLanguagesEvent,
    TResult? Function(_GetAppLanguageEvent value)? GetUserLanguageEvent,
    TResult? Function(_ChangeAppLanguageEvent value)? AppLanguageChangedEvent,
  }) {
    return GetAllLanguagesEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewLanguageSelectedEvent value)? NewLanguageSelectedEvent,
    TResult Function(_GetAllLanguagesEvent value)? GetAllLanguagesEvent,
    TResult Function(_GetAppLanguageEvent value)? GetUserLanguageEvent,
    TResult Function(_ChangeAppLanguageEvent value)? AppLanguageChangedEvent,
    required TResult orElse(),
  }) {
    if (GetAllLanguagesEvent != null) {
      return GetAllLanguagesEvent(this);
    }
    return orElse();
  }
}

abstract class _GetAllLanguagesEvent implements ChangeLanguageEvent {
  factory _GetAllLanguagesEvent() = _$GetAllLanguagesEventImpl;
}

/// @nodoc
abstract class _$$GetAppLanguageEventImplCopyWith<$Res> {
  factory _$$GetAppLanguageEventImplCopyWith(
    _$GetAppLanguageEventImpl value,
    $Res Function(_$GetAppLanguageEventImpl) then,
  ) = __$$GetAppLanguageEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAppLanguageEventImplCopyWithImpl<$Res>
    extends _$ChangeLanguageEventCopyWithImpl<$Res, _$GetAppLanguageEventImpl>
    implements _$$GetAppLanguageEventImplCopyWith<$Res> {
  __$$GetAppLanguageEventImplCopyWithImpl(
    _$GetAppLanguageEventImpl _value,
    $Res Function(_$GetAppLanguageEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChangeLanguageEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetAppLanguageEventImpl implements _GetAppLanguageEvent {
  _$GetAppLanguageEventImpl();

  @override
  String toString() {
    return 'ChangeLanguageEvent.GetUserLanguageEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAppLanguageEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String lang) NewLanguageSelectedEvent,
    required TResult Function() GetAllLanguagesEvent,
    required TResult Function() GetUserLanguageEvent,
    required TResult Function(String lang) AppLanguageChangedEvent,
  }) {
    return GetUserLanguageEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String lang)? NewLanguageSelectedEvent,
    TResult? Function()? GetAllLanguagesEvent,
    TResult? Function()? GetUserLanguageEvent,
    TResult? Function(String lang)? AppLanguageChangedEvent,
  }) {
    return GetUserLanguageEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String lang)? NewLanguageSelectedEvent,
    TResult Function()? GetAllLanguagesEvent,
    TResult Function()? GetUserLanguageEvent,
    TResult Function(String lang)? AppLanguageChangedEvent,
    required TResult orElse(),
  }) {
    if (GetUserLanguageEvent != null) {
      return GetUserLanguageEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NewLanguageSelectedEvent value)
    NewLanguageSelectedEvent,
    required TResult Function(_GetAllLanguagesEvent value) GetAllLanguagesEvent,
    required TResult Function(_GetAppLanguageEvent value) GetUserLanguageEvent,
    required TResult Function(_ChangeAppLanguageEvent value)
    AppLanguageChangedEvent,
  }) {
    return GetUserLanguageEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NewLanguageSelectedEvent value)?
    NewLanguageSelectedEvent,
    TResult? Function(_GetAllLanguagesEvent value)? GetAllLanguagesEvent,
    TResult? Function(_GetAppLanguageEvent value)? GetUserLanguageEvent,
    TResult? Function(_ChangeAppLanguageEvent value)? AppLanguageChangedEvent,
  }) {
    return GetUserLanguageEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewLanguageSelectedEvent value)? NewLanguageSelectedEvent,
    TResult Function(_GetAllLanguagesEvent value)? GetAllLanguagesEvent,
    TResult Function(_GetAppLanguageEvent value)? GetUserLanguageEvent,
    TResult Function(_ChangeAppLanguageEvent value)? AppLanguageChangedEvent,
    required TResult orElse(),
  }) {
    if (GetUserLanguageEvent != null) {
      return GetUserLanguageEvent(this);
    }
    return orElse();
  }
}

abstract class _GetAppLanguageEvent implements ChangeLanguageEvent {
  factory _GetAppLanguageEvent() = _$GetAppLanguageEventImpl;
}

/// @nodoc
abstract class _$$ChangeAppLanguageEventImplCopyWith<$Res> {
  factory _$$ChangeAppLanguageEventImplCopyWith(
    _$ChangeAppLanguageEventImpl value,
    $Res Function(_$ChangeAppLanguageEventImpl) then,
  ) = __$$ChangeAppLanguageEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String lang});
}

/// @nodoc
class __$$ChangeAppLanguageEventImplCopyWithImpl<$Res>
    extends
        _$ChangeLanguageEventCopyWithImpl<$Res, _$ChangeAppLanguageEventImpl>
    implements _$$ChangeAppLanguageEventImplCopyWith<$Res> {
  __$$ChangeAppLanguageEventImplCopyWithImpl(
    _$ChangeAppLanguageEventImpl _value,
    $Res Function(_$ChangeAppLanguageEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChangeLanguageEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? lang = null}) {
    return _then(
      _$ChangeAppLanguageEventImpl(
        null == lang
            ? _value.lang
            : lang // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$ChangeAppLanguageEventImpl implements _ChangeAppLanguageEvent {
  _$ChangeAppLanguageEventImpl(this.lang);

  @override
  final String lang;

  @override
  String toString() {
    return 'ChangeLanguageEvent.AppLanguageChangedEvent(lang: $lang)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeAppLanguageEventImpl &&
            (identical(other.lang, lang) || other.lang == lang));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lang);

  /// Create a copy of ChangeLanguageEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeAppLanguageEventImplCopyWith<_$ChangeAppLanguageEventImpl>
  get copyWith =>
      __$$ChangeAppLanguageEventImplCopyWithImpl<_$ChangeAppLanguageEventImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String lang) NewLanguageSelectedEvent,
    required TResult Function() GetAllLanguagesEvent,
    required TResult Function() GetUserLanguageEvent,
    required TResult Function(String lang) AppLanguageChangedEvent,
  }) {
    return AppLanguageChangedEvent(lang);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String lang)? NewLanguageSelectedEvent,
    TResult? Function()? GetAllLanguagesEvent,
    TResult? Function()? GetUserLanguageEvent,
    TResult? Function(String lang)? AppLanguageChangedEvent,
  }) {
    return AppLanguageChangedEvent?.call(lang);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String lang)? NewLanguageSelectedEvent,
    TResult Function()? GetAllLanguagesEvent,
    TResult Function()? GetUserLanguageEvent,
    TResult Function(String lang)? AppLanguageChangedEvent,
    required TResult orElse(),
  }) {
    if (AppLanguageChangedEvent != null) {
      return AppLanguageChangedEvent(lang);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NewLanguageSelectedEvent value)
    NewLanguageSelectedEvent,
    required TResult Function(_GetAllLanguagesEvent value) GetAllLanguagesEvent,
    required TResult Function(_GetAppLanguageEvent value) GetUserLanguageEvent,
    required TResult Function(_ChangeAppLanguageEvent value)
    AppLanguageChangedEvent,
  }) {
    return AppLanguageChangedEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NewLanguageSelectedEvent value)?
    NewLanguageSelectedEvent,
    TResult? Function(_GetAllLanguagesEvent value)? GetAllLanguagesEvent,
    TResult? Function(_GetAppLanguageEvent value)? GetUserLanguageEvent,
    TResult? Function(_ChangeAppLanguageEvent value)? AppLanguageChangedEvent,
  }) {
    return AppLanguageChangedEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewLanguageSelectedEvent value)? NewLanguageSelectedEvent,
    TResult Function(_GetAllLanguagesEvent value)? GetAllLanguagesEvent,
    TResult Function(_GetAppLanguageEvent value)? GetUserLanguageEvent,
    TResult Function(_ChangeAppLanguageEvent value)? AppLanguageChangedEvent,
    required TResult orElse(),
  }) {
    if (AppLanguageChangedEvent != null) {
      return AppLanguageChangedEvent(this);
    }
    return orElse();
  }
}

abstract class _ChangeAppLanguageEvent implements ChangeLanguageEvent {
  factory _ChangeAppLanguageEvent(final String lang) =
      _$ChangeAppLanguageEventImpl;

  String get lang;

  /// Create a copy of ChangeLanguageEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeAppLanguageEventImplCopyWith<_$ChangeAppLanguageEventImpl>
  get copyWith => throw _privateConstructorUsedError;
}
