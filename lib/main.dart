import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/cubits/post_cubit.dart';
import 'package:task/locator.dart';
import 'package:task/pages/home_page.dart';

void main() {
  setupLocator();
  
  runApp(const PostsApp());
}

class PostsApp extends StatelessWidget {
  const PostsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (context) {
          final cubit = PostCubit();
          cubit.fetchPosts();
          return cubit;
        },
        child: const HomePage(),
      ),
    );
  }
}
