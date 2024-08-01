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

    return post.hidden
        ? const SizedBox()
        : Stack(
            children: [
              Container(
                width: double.infinity,
                margin: const EdgeInsets.all(8.0),
                child: Card(
                  color: post.isSwitched ? Colors.grey.withOpacity(0.5) : null,
                  child: AnimatedOpacity(
                    duration: const Duration(milliseconds: 300),
                    opacity: post.isSwitched ? 0.5 : 1.0,
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
                            style: TextStyle(
                              color: post.isSwitched ? Colors.black : Colors.grey,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Switch(
                                value: post.isSwitched,
                                onChanged: (value) {
                                  postCubit.reducePostOpacity(post.id);
                                },
                              ),
                              IconButton(
                                icon: const Icon(Icons.delete),
                                onPressed: () {
                                  postCubit.deletePostVisibility(post.id);
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              if (post.isUpdating)
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
