import 'package:dio/dio.dart';

class PostService {
  final Dio dio = Dio();

  Future<List<dynamic>> fetchPosts({List<int>? excludeIds}) async {
    try {
      final response =
          await dio.get('https://jsonplaceholder.typicode.com/posts');
      List<dynamic> posts = response.data;

      if (excludeIds != null && excludeIds.isNotEmpty) {
        posts =
            posts.where((post) => !excludeIds.contains(post['id'])).toList();
      }

      return posts;
    } catch (e) {
      throw Exception('Failed to fetch posts: $e');
    }
  }

  Future<void> deletePost(int postId) async {
    try {
      await dio.delete('https://jsonplaceholder.typicode.com/posts/$postId');
    } catch (e) {
      throw Exception('Failed to delete post: $e');
    }
  }
}
