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
      final List<PostModel> postList = posts.map((json) => PostModel.fromJson(json)).toList();
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

  // void deletePostVisability(int postId) async {
  //   final currentState = state;
  //   if (currentState is PostLoaded) {
  //     emit(PostUpdating(posts: currentState.posts, updatingPostId: postId));

  //     try {
  //       await postService.deletePost(postId);

  //       final List<PostModel> updatedPosts = currentState.posts.map((post) {
  //         if (post.id == postId) {
  //           return post.copyWith(hidden: !post.hidden);
  //         }
  //         return post;
  //       }).toList();

  //       if (updatedPosts.any((post) => post.id == postId && post.hidden)) {
  //         hiddenPostIds.add(postId);
  //       } else {
  //         hiddenPostIds.remove(postId);
  //       }

  //       emit(PostLoaded(posts: updatedPosts));
  //     } catch (e) {
  //       emit(PostError(message: 'Failed to delete post: $e'));
  //     }
  //   }
  // }
}
