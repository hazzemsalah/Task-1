import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/locator.dart';
import 'package:task/models/post_model.dart';
import 'package:task/services/post_service.dart';

part 'post_state.dart';

class PostCubit extends Cubit<PostState> {
  final PostService postService = locator<PostService>();

  PostCubit() : super(PostLoading());

  List<int> hiddenPostIds = [];

  void fetchPosts() async {
    emit(PostLoading());
    try {
      final posts = await postService.fetchPosts(excludeIds: hiddenPostIds);
      final List<PostModel> postList =
          posts.map((json) => PostModel.fromJson(json)).toList();
      emit(PostLoaded(posts: postList));
    } catch (e) {
      emit(PostError(message: 'Failed to load posts: $e'));
    }
  }

  void deletePostVisability(int postId) async {
    final currentState = state;
    if (currentState is PostLoaded) {
      emit(PostUpdating(posts: currentState.posts, updatingPostId: postId));

      try {
        await postService.deletePost(postId);

        final List<PostModel> updatedPosts = currentState.posts.map((post) {
          if (post.id == postId) {
            return post.copyWith(hidden: !post.hidden);
          }
          return post;
        }).toList();

        if (updatedPosts.any((post) => post.id == postId && post.hidden)) {
          hiddenPostIds.add(postId);
        } else {
          hiddenPostIds.remove(postId);
        }

        emit(PostLoaded(posts: updatedPosts));
      } catch (e) {
        emit(PostError(message: 'Failed to delete post: $e'));
      }
    }
  }
}
