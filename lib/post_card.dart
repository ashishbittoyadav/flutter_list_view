import 'package:flutter/material.dart';
import 'package:test_list/post_item.dart';

class PostCardView extends StatelessWidget {
  const PostCardView({
    super.key,
    required this.post,
  });

  final Post post;

  @override
  Widget build(BuildContext context) {
    return Card.filled(
      elevation: 4,
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Text(
            post.title,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            post.body,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
