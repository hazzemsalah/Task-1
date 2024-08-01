import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/core/services/posts_service.dart';
import '../../../locator.dart';
import '../models/post_model.dart';

part 'post_state.dart';

class PostCubit extends Cubit<PostsState> {
  final PostService postService = locator<PostService>();

  PostCubit() : super(PostsState());

  List<int> hiddenPostIds = [];

  void fetchPosts() async {
    emit(state.copyWith(postsRequest: RequestState.loading));
    try {
      final posts = await postService.fetchPosts(excludeIds: hiddenPostIds);
      final List<PostModel> postList =
          posts.map((json) => PostModel.fromJson(json)).toList();
      emit(state.copyWith(postsRequest: RequestState.success, posts: postList));
    } catch (e) {
      emit(
        state.copyWith(
          postsRequest: RequestState.error,
          errorMessage: 'Failed to fetch posts: $e',
        ),
      );
    }
  }
  // this method handle the next cases:
  //    - Show loading indicator for the deleting specific post
  //    - Make the backend call to delete the post
  //    - Update the state after deletion

  void deletePostVisibility(int postId) async {
    // Show loading indicator for the specific post
    final updatedPosts = state.posts.map((post) {
      if (post.id == postId) {
        return post.copyWith(isUpdating: true);
      }
      return post;
    }).toList();
    emit(state.copyWith(posts: updatedPosts));

    try {
      // Make the backend call to delete the post
      await postService.deletePost(postId);

      // Update the state after deletion
      final finalPosts =
          state.posts.where((post) => post.id != postId).toList();
      hiddenPostIds.add(postId);
      emit(state.copyWith(
          postsRequest: RequestState.success, posts: finalPosts));
    } catch (e) {
      // Handle the error
      emit(
        state.copyWith(
          postsRequest: RequestState.error,
          errorMessage: 'Failed to delete post: $e',
        ),
      );
    }
  }

  void reducePostOpacity(int postId) async {
    final updatedPosts = state.posts.map((post) {
      if (post.id == postId) {
        return post.copyWith(isUpdating: true);
      }
      return post;
    }).toList();
    emit(state.copyWith(posts: updatedPosts));

    try {
      // Simulation 
      await Future.delayed(const Duration(seconds: 2));
      // Update the state after the update
      final finalPosts = state.posts.map((post) {
        if (post.id == postId) {
          return post.copyWith(
            isSwitched: !post.isSwitched,
            isUpdating: false,
          );
        }
        return post;
      }).toList();
      emit(state.copyWith(posts: finalPosts));
    } catch (e) {
      emit(
        state.copyWith(
          postsRequest: RequestState.error,
          errorMessage: 'Failed to update post: $e',
        ),
      );
    }
  }
}
