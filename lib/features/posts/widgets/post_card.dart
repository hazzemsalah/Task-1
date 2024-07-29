import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubits/post_cubit.dart';
import '../models/post_model.dart';

class PostCard extends StatelessWidget {
  final PostModel post;
  const PostCard({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    final postCubit = BlocProvider.of<PostCubit>(context);
    final state = postCubit.state;

    bool isUpdating = false;
    if (state is PostUpdating && state.updatingPostId == post.id) {
      isUpdating = true;
    }

    return post.hidden
        ? const SizedBox()
        : Stack(
            children: [
              Container(
                width: double.infinity,
                margin: const EdgeInsets.all(8.0),
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          post.title,
                          style: const TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8.0),
                        Text(
                          post.body,
                          style: const TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 0,
                right: 0,
                child: IconButton(
                  icon: const Icon(Icons.delete),
                  onPressed: () {
                    postCubit.deletePostVisability(post.id);
                  },
                ),
              ),
              if (isUpdating)
                Positioned.fill(
                  child: Container(
                    margin: const EdgeInsets.all(12.0),
                    color: Colors.grey.withOpacity(0.4),
                    child: const Center(
                      child: CircularProgressIndicator(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
            ],
          );
  }
}
