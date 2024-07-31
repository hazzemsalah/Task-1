// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PostModel _$PostModelFromJson(Map<String, dynamic> json) {
  return _PostModel.fromJson(json);
}

/// @nodoc
mixin _$PostModel {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;
  bool get hidden => throw _privateConstructorUsedError;
<<<<<<< HEAD:lib/models/post_model.freezed.dart
=======
  bool get isUpdating => throw _privateConstructorUsedError;
>>>>>>> 03d47bdc26e01e2c6ee1c3e683e6ef8e3b297523:lib/features/posts/models/post_model.freezed.dart

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostModelCopyWith<PostModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostModelCopyWith<$Res> {
  factory $PostModelCopyWith(PostModel value, $Res Function(PostModel) then) =
      _$PostModelCopyWithImpl<$Res, PostModel>;
  @useResult
<<<<<<< HEAD:lib/models/post_model.freezed.dart
  $Res call({int id, String title, String body, bool hidden});
=======
  $Res call({int id, String title, String body, bool hidden, bool isUpdating});
>>>>>>> 03d47bdc26e01e2c6ee1c3e683e6ef8e3b297523:lib/features/posts/models/post_model.freezed.dart
}

/// @nodoc
class _$PostModelCopyWithImpl<$Res, $Val extends PostModel>
    implements $PostModelCopyWith<$Res> {
  _$PostModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? body = null,
    Object? hidden = null,
<<<<<<< HEAD:lib/models/post_model.freezed.dart
=======
    Object? isUpdating = null,
>>>>>>> 03d47bdc26e01e2c6ee1c3e683e6ef8e3b297523:lib/features/posts/models/post_model.freezed.dart
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      hidden: null == hidden
          ? _value.hidden
          : hidden // ignore: cast_nullable_to_non_nullable
              as bool,
<<<<<<< HEAD:lib/models/post_model.freezed.dart
=======
      isUpdating: null == isUpdating
          ? _value.isUpdating
          : isUpdating // ignore: cast_nullable_to_non_nullable
              as bool,
>>>>>>> 03d47bdc26e01e2c6ee1c3e683e6ef8e3b297523:lib/features/posts/models/post_model.freezed.dart
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostModelImplCopyWith<$Res>
    implements $PostModelCopyWith<$Res> {
  factory _$$PostModelImplCopyWith(
          _$PostModelImpl value, $Res Function(_$PostModelImpl) then) =
      __$$PostModelImplCopyWithImpl<$Res>;
  @override
  @useResult
<<<<<<< HEAD:lib/models/post_model.freezed.dart
  $Res call({int id, String title, String body, bool hidden});
=======
  $Res call({int id, String title, String body, bool hidden, bool isUpdating});
>>>>>>> 03d47bdc26e01e2c6ee1c3e683e6ef8e3b297523:lib/features/posts/models/post_model.freezed.dart
}

/// @nodoc
class __$$PostModelImplCopyWithImpl<$Res>
    extends _$PostModelCopyWithImpl<$Res, _$PostModelImpl>
    implements _$$PostModelImplCopyWith<$Res> {
  __$$PostModelImplCopyWithImpl(
      _$PostModelImpl _value, $Res Function(_$PostModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? body = null,
    Object? hidden = null,
<<<<<<< HEAD:lib/models/post_model.freezed.dart
=======
    Object? isUpdating = null,
>>>>>>> 03d47bdc26e01e2c6ee1c3e683e6ef8e3b297523:lib/features/posts/models/post_model.freezed.dart
  }) {
    return _then(_$PostModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      hidden: null == hidden
          ? _value.hidden
          : hidden // ignore: cast_nullable_to_non_nullable
              as bool,
<<<<<<< HEAD:lib/models/post_model.freezed.dart
=======
      isUpdating: null == isUpdating
          ? _value.isUpdating
          : isUpdating // ignore: cast_nullable_to_non_nullable
              as bool,
>>>>>>> 03d47bdc26e01e2c6ee1c3e683e6ef8e3b297523:lib/features/posts/models/post_model.freezed.dart
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostModelImpl implements _PostModel {
<<<<<<< HEAD:lib/models/post_model.freezed.dart
  const _$PostModelImpl(
      {required this.id,
      required this.title,
      required this.body,
      this.hidden = false});
=======
  _$PostModelImpl(
      {required this.id,
      required this.title,
      required this.body,
      this.hidden = false,
      this.isUpdating = false});
>>>>>>> 03d47bdc26e01e2c6ee1c3e683e6ef8e3b297523:lib/features/posts/models/post_model.freezed.dart

  factory _$PostModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostModelImplFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String body;
  @override
  @JsonKey()
  final bool hidden;
<<<<<<< HEAD:lib/models/post_model.freezed.dart

  @override
  String toString() {
    return 'PostModel(id: $id, title: $title, body: $body, hidden: $hidden)';
=======
  @override
  @JsonKey()
  final bool isUpdating;

  @override
  String toString() {
    return 'PostModel(id: $id, title: $title, body: $body, hidden: $hidden, isUpdating: $isUpdating)';
>>>>>>> 03d47bdc26e01e2c6ee1c3e683e6ef8e3b297523:lib/features/posts/models/post_model.freezed.dart
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body) &&
<<<<<<< HEAD:lib/models/post_model.freezed.dart
            (identical(other.hidden, hidden) || other.hidden == hidden));
=======
            (identical(other.hidden, hidden) || other.hidden == hidden) &&
            (identical(other.isUpdating, isUpdating) ||
                other.isUpdating == isUpdating));
>>>>>>> 03d47bdc26e01e2c6ee1c3e683e6ef8e3b297523:lib/features/posts/models/post_model.freezed.dart
  }

  @JsonKey(ignore: true)
  @override
<<<<<<< HEAD:lib/models/post_model.freezed.dart
  int get hashCode => Object.hash(runtimeType, id, title, body, hidden);
=======
  int get hashCode =>
      Object.hash(runtimeType, id, title, body, hidden, isUpdating);
>>>>>>> 03d47bdc26e01e2c6ee1c3e683e6ef8e3b297523:lib/features/posts/models/post_model.freezed.dart

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostModelImplCopyWith<_$PostModelImpl> get copyWith =>
      __$$PostModelImplCopyWithImpl<_$PostModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostModelImplToJson(
      this,
    );
  }
}

abstract class _PostModel implements PostModel {
<<<<<<< HEAD:lib/models/post_model.freezed.dart
  const factory _PostModel(
      {required final int id,
      required final String title,
      required final String body,
      final bool hidden}) = _$PostModelImpl;
=======
  factory _PostModel(
      {required final int id,
      required final String title,
      required final String body,
      final bool hidden,
      final bool isUpdating}) = _$PostModelImpl;
>>>>>>> 03d47bdc26e01e2c6ee1c3e683e6ef8e3b297523:lib/features/posts/models/post_model.freezed.dart

  factory _PostModel.fromJson(Map<String, dynamic> json) =
      _$PostModelImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get body;
  @override
  bool get hidden;
  @override
<<<<<<< HEAD:lib/models/post_model.freezed.dart
=======
  bool get isUpdating;
  @override
>>>>>>> 03d47bdc26e01e2c6ee1c3e683e6ef8e3b297523:lib/features/posts/models/post_model.freezed.dart
  @JsonKey(ignore: true)
  _$$PostModelImplCopyWith<_$PostModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
