import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_list/api_service.dart';
import 'package:test_list/widget.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      color: Theme.of(context).colorScheme.surface,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.add))],
          title: const Text('Posts'),
        ),
        body: const Center(
          child: PostListView(),
        ),
      ),
    );
    // return const MaterialApp(
    //   title: 'Posts',
    //   home: PostListView(),
    // );
  }
}
