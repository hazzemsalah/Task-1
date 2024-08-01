import 'package:freezed_annotation/freezed_annotation.dart';
part 'post_model.freezed.dart';
part 'post_model.g.dart';

@freezed
class PostModel with _$PostModel {
  factory PostModel({
    required int id,
    required String title,
    required String body,
    @Default(false) bool hidden,
    @Default(false) bool isUpdating,
    @Default(false) bool isSwitched,
  }) = _PostModel;

  factory PostModel.fromJson(Map<String, dynamic> json) => _$PostModelFromJson(json);
}
