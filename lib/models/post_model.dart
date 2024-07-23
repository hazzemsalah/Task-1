import 'package:json_annotation/json_annotation.dart';
part 'post_model.g.dart';

@JsonSerializable()
class PostModel {
  final int id;
  final String title;
  final String body;
  bool hidden;

  PostModel({
    required this.id,
    required this.title,
    required this.body,
    this.hidden = false,
  });

  factory PostModel.fromJson(Map<String, dynamic> json) => _$PostModelFromJson(json);


  PostModel copyWith({bool? hidden}) {
    return PostModel(
      id: id,
      title: title,
      body: body,
      hidden: hidden ?? this.hidden,
    );
  }
}
