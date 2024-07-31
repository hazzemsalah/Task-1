import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'features/posts/cubits/post_cubit.dart';
import 'locator.dart';
import 'features/posts/pages/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();
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
