import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:provider/provider.dart';
import 'package:test_list/api_service.dart';
import 'package:test_list/post_card.dart';
import 'package:test_list/post_item.dart';
import 'package:test_list/post_provider.dart';

class PostListView extends ConsumerStatefulWidget {
  const PostListView({super.key});

  @override
  ConsumerState<PostListView> createState() {
    return _PostListViewState();
  }
}

class _PostListViewState extends ConsumerState<PostListView> {
  late Future<List<Post>> futurePosts;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final ayncPost = ref.watch(postRepoProvider);
    return FutureBuilder<List<Post>>(
      future: ayncPost,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Container(
            color: Theme.of(context).colorScheme.surface,
            child: ListView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: snapshot.data!.length,
              itemBuilder: (BuildContext context, int index) {
                return PostCardView(post: snapshot.data![index]);
                // return Text(
                //   snapshot.data![index].title,
                // );
              },
            ),
          );
          // return Text(snapshot.data![0].title);
        } else if (snapshot.hasError) {
          return Text('${snapshot.error}');
        }

        // By default, show a loading spinner.
        return const CircularProgressIndicator();
      },
    );
  }
}
