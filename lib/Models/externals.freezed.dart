// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'externals.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Externals _$ExternalsFromJson(Map<String, dynamic> json) {
  return _Externals.fromJson(json);
}

/// @nodoc
mixin _$Externals {
  dynamic get tvrage => throw _privateConstructorUsedError;
  int? get thetvdb => throw _privateConstructorUsedError;
  String? get imdb => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExternalsCopyWith<Externals> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExternalsCopyWith<$Res> {
  factory $ExternalsCopyWith(Externals value, $Res Function(Externals) then) =
      _$ExternalsCopyWithImpl<$Res, Externals>;
  @useResult
  $Res call({dynamic tvrage, int? thetvdb, String? imdb});
}

/// @nodoc
class _$ExternalsCopyWithImpl<$Res, $Val extends Externals>
    implements $ExternalsCopyWith<$Res> {
  _$ExternalsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tvrage = freezed,
    Object? thetvdb = freezed,
    Object? imdb = freezed,
  }) {
    return _then(_value.copyWith(
      tvrage: freezed == tvrage
          ? _value.tvrage
          : tvrage // ignore: cast_nullable_to_non_nullable
              as dynamic,
      thetvdb: freezed == thetvdb
          ? _value.thetvdb
          : thetvdb // ignore: cast_nullable_to_non_nullable
              as int?,
      imdb: freezed == imdb
          ? _value.imdb
          : imdb // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExternalsImplCopyWith<$Res>
    implements $ExternalsCopyWith<$Res> {
  factory _$$ExternalsImplCopyWith(
          _$ExternalsImpl value, $Res Function(_$ExternalsImpl) then) =
      __$$ExternalsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic tvrage, int? thetvdb, String? imdb});
}

/// @nodoc
class __$$ExternalsImplCopyWithImpl<$Res>
    extends _$ExternalsCopyWithImpl<$Res, _$ExternalsImpl>
    implements _$$ExternalsImplCopyWith<$Res> {
  __$$ExternalsImplCopyWithImpl(
      _$ExternalsImpl _value, $Res Function(_$ExternalsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tvrage = freezed,
    Object? thetvdb = freezed,
    Object? imdb = freezed,
  }) {
    return _then(_$ExternalsImpl(
      tvrage: freezed == tvrage
          ? _value.tvrage
          : tvrage // ignore: cast_nullable_to_non_nullable
              as dynamic,
      thetvdb: freezed == thetvdb
          ? _value.thetvdb
          : thetvdb // ignore: cast_nullable_to_non_nullable
              as int?,
      imdb: freezed == imdb
          ? _value.imdb
          : imdb // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExternalsImpl implements _Externals {
  const _$ExternalsImpl(
      {required this.tvrage, required this.thetvdb, required this.imdb});

  factory _$ExternalsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExternalsImplFromJson(json);

  @override
  final dynamic tvrage;
  @override
  final int? thetvdb;
  @override
  final String? imdb;

  @override
  String toString() {
    return 'Externals(tvrage: $tvrage, thetvdb: $thetvdb, imdb: $imdb)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExternalsImpl &&
            const DeepCollectionEquality().equals(other.tvrage, tvrage) &&
            (identical(other.thetvdb, thetvdb) || other.thetvdb == thetvdb) &&
            (identical(other.imdb, imdb) || other.imdb == imdb));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(tvrage), thetvdb, imdb);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExternalsImplCopyWith<_$ExternalsImpl> get copyWith =>
      __$$ExternalsImplCopyWithImpl<_$ExternalsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExternalsImplToJson(
      this,
    );
  }
}

abstract class _Externals implements Externals {
  const factory _Externals(
      {required final dynamic tvrage,
      required final int? thetvdb,
      required final String? imdb}) = _$ExternalsImpl;

  factory _Externals.fromJson(Map<String, dynamic> json) =
      _$ExternalsImpl.fromJson;

  @override
  dynamic get tvrage;
  @override
  int? get thetvdb;
  @override
  String? get imdb;
  @override
  @JsonKey(ignore: true)
  _$$ExternalsImplCopyWith<_$ExternalsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
