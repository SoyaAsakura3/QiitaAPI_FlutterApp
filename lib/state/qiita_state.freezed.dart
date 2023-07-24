// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'qiita_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$QiitaState {
  List<Article>? get list => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QiitaStateCopyWith<QiitaState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QiitaStateCopyWith<$Res> {
  factory $QiitaStateCopyWith(
          QiitaState value, $Res Function(QiitaState) then) =
      _$QiitaStateCopyWithImpl<$Res, QiitaState>;
  @useResult
  $Res call({List<Article>? list});
}

/// @nodoc
class _$QiitaStateCopyWithImpl<$Res, $Val extends QiitaState>
    implements $QiitaStateCopyWith<$Res> {
  _$QiitaStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = freezed,
  }) {
    return _then(_value.copyWith(
      list: freezed == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<Article>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_QiitaStateCopyWith<$Res>
    implements $QiitaStateCopyWith<$Res> {
  factory _$$_QiitaStateCopyWith(
          _$_QiitaState value, $Res Function(_$_QiitaState) then) =
      __$$_QiitaStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Article>? list});
}

/// @nodoc
class __$$_QiitaStateCopyWithImpl<$Res>
    extends _$QiitaStateCopyWithImpl<$Res, _$_QiitaState>
    implements _$$_QiitaStateCopyWith<$Res> {
  __$$_QiitaStateCopyWithImpl(
      _$_QiitaState _value, $Res Function(_$_QiitaState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = freezed,
  }) {
    return _then(_$_QiitaState(
      list: freezed == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<Article>?,
    ));
  }
}

/// @nodoc

class _$_QiitaState implements _QiitaState {
  const _$_QiitaState({final List<Article>? list}) : _list = list;

  final List<Article>? _list;
  @override
  List<Article>? get list {
    final value = _list;
    if (value == null) return null;
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'QiitaState(list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QiitaState &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_list));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QiitaStateCopyWith<_$_QiitaState> get copyWith =>
      __$$_QiitaStateCopyWithImpl<_$_QiitaState>(this, _$identity);
}

abstract class _QiitaState implements QiitaState {
  const factory _QiitaState({final List<Article>? list}) = _$_QiitaState;

  @override
  List<Article>? get list;
  @override
  @JsonKey(ignore: true)
  _$$_QiitaStateCopyWith<_$_QiitaState> get copyWith =>
      throw _privateConstructorUsedError;
}
