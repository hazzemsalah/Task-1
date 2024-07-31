import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubits/post_cubit.dart';
import '../widgets/post_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Posts'),
      ),
      body: BlocBuilder<PostCubit, PostsState>(
        builder: (context, state) {
          if (state.postsRequest == RequestState.loading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state.postsRequest == RequestState.success) {
            return ListView.builder(
              itemCount: state.posts.length,
              itemBuilder: (context, index) {
                final post = state.posts[index];
                return PostCard(post: post);
              },
            );
          } else if (state.postsRequest == RequestState.error) {
            return Center(child: Text(state.errorMessage));
          } else {
            return const Center(child: Text('Unknown state'));
          }
        },
      ),
    );
  }
}
