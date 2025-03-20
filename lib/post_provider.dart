// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:test_list/post_item.dart';
// import 'api_service.dart';

// class PostProvider {
//   final ApiService _apiService = ApiService();

//   Future<List<Post>> fetchPosts() async {
//     return await _apiService.fetchPosts();
//   }
// }

// // Future Provider
// final postProvider = FutureProvider<List<Post>>(
//   create: (context) => PostProvider().fetchPosts(),
//   initialData: [],
// );


// final dataProvider = FutureProvider<List<Post>>((ref) async {
//   return PostProvider().fetchPosts();
// }, create: (BuildContext context) {  }, initialData: [const Post(userId: 0, id: 0, title: 'title', body: 'body')],);