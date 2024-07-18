import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/cubits/post_cubit.dart';
import 'package:task/pages/home_page.dart';
import 'package:task/services/post_service.dart';

void main() {
  runApp(const PostsApp());
}

class PostsApp extends StatelessWidget {
  const PostsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create:  (context) {
              final cubit = PostCubit(PostService());
              cubit.fetchPosts();
              return cubit;
            },
        child: const HomePage(),
      ),
    );
  }
}
