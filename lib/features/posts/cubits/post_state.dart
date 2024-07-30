part of 'post_cubit.dart';

enum RequestState { initial, loading, success, error }

class PostsState {
  final RequestState postsRequest;
  final List<PostModel> posts;
  final String errorMessage;
  PostsState({
    this.postsRequest = RequestState.initial,
    this.posts = const [],
    this.errorMessage = '',
  });
  PostsState copyWith({
    RequestState? postsRequest,
    List<PostModel>? posts,
    String? errorMessage,
  }) {
    return PostsState(
      postsRequest: postsRequest ?? this.postsRequest,
      posts: posts ?? this.posts,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}
