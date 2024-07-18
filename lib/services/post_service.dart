import 'package:dio/dio.dart';

class PostService {
  final Dio _dio = Dio();

  Future<List<dynamic>> fetchPosts({List<int>? excludeIds}) async {
    try {
      final response = await _dio.get('https://jsonplaceholder.typicode.com/posts');
      List<dynamic> posts = response.data;
      
      if (excludeIds != null && excludeIds.isNotEmpty) {
        posts = posts.where((post) => !excludeIds.contains(post['id'])).toList();
      }

      return posts;
    } catch (e) {
      throw Exception('Failed to fetch posts: $e');
    }
  }
}
