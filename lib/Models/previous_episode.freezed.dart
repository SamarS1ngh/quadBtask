// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'previous_episode.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Previousepisode _$PreviousepisodeFromJson(Map<String, dynamic> json) {
  return _Previousepisode.fromJson(json);
}

/// @nodoc
mixin _$Previousepisode {
  String get href => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PreviousepisodeCopyWith<Previousepisode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PreviousepisodeCopyWith<$Res> {
  factory $PreviousepisodeCopyWith(
          Previousepisode value, $Res Function(Previousepisode) then) =
      _$PreviousepisodeCopyWithImpl<$Res, Previousepisode>;
  @useResult
  $Res call({String href});
}

/// @nodoc
class _$PreviousepisodeCopyWithImpl<$Res, $Val extends Previousepisode>
    implements $PreviousepisodeCopyWith<$Res> {
  _$PreviousepisodeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? href = null,
  }) {
    return _then(_value.copyWith(
      href: null == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PreviousepisodeImplCopyWith<$Res>
    implements $PreviousepisodeCopyWith<$Res> {
  factory _$$PreviousepisodeImplCopyWith(_$PreviousepisodeImpl value,
          $Res Function(_$PreviousepisodeImpl) then) =
      __$$PreviousepisodeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String href});
}

/// @nodoc
class __$$PreviousepisodeImplCopyWithImpl<$Res>
    extends _$PreviousepisodeCopyWithImpl<$Res, _$PreviousepisodeImpl>
    implements _$$PreviousepisodeImplCopyWith<$Res> {
  __$$PreviousepisodeImplCopyWithImpl(
      _$PreviousepisodeImpl _value, $Res Function(_$PreviousepisodeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? href = null,
  }) {
    return _then(_$PreviousepisodeImpl(
      href: null == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PreviousepisodeImpl implements _Previousepisode {
  const _$PreviousepisodeImpl({required this.href});

  factory _$PreviousepisodeImpl.fromJson(Map<String, dynamic> json) =>
      _$$PreviousepisodeImplFromJson(json);

  @override
  final String href;

  @override
  String toString() {
    return 'Previousepisode(href: $href)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PreviousepisodeImpl &&
            (identical(other.href, href) || other.href == href));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, href);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PreviousepisodeImplCopyWith<_$PreviousepisodeImpl> get copyWith =>
      __$$PreviousepisodeImplCopyWithImpl<_$PreviousepisodeImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PreviousepisodeImplToJson(
      this,
    );
  }
}

abstract class _Previousepisode implements Previousepisode {
  const factory _Previousepisode({required final String href}) =
      _$PreviousepisodeImpl;

  factory _Previousepisode.fromJson(Map<String, dynamic> json) =
      _$PreviousepisodeImpl.fromJson;

  @override
  String get href;
  @override
  @JsonKey(ignore: true)
  _$$PreviousepisodeImplCopyWith<_$PreviousepisodeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
