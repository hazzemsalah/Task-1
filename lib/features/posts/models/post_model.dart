class PostModel {
  final int id;
  final String title;
  final String body;
  bool hidden;
  bool isUpdating;

  PostModel({
    required this.id,
    required this.title,
    required this.body,
    this.hidden = false,
    this.isUpdating = false,
  });

  factory PostModel.fromJson(Map<String, dynamic> json) {
    return PostModel(
      id: json['id'],
      title: json['title'],
      body: json['body'],
      hidden: false,
      isUpdating: false,
    );
  }

  PostModel copyWith({bool? hidden, bool? isUpdating}) {
    return PostModel(
      id: id,
      title: title,
      body: body,
      hidden: hidden ?? this.hidden,
      isUpdating: isUpdating ?? this.isUpdating,
    );
  }
}
