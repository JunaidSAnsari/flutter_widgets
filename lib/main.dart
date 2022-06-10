// import 'dart:convert';
//
// import 'package:api/post.dart';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
//
// void main() {
//   runApp(Api_List());
// }
//
// Future<List<Post>> fetchPost() async {
//   var response =
//       await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));
//   if (response.statusCode == 200) {
//     List jsonResponse = jsonDecode(response.body);
//     return jsonResponse.map((data) => Post.fromJson(data)).toList();
//   } else {
//     throw Exception("Unexpected Error");
//   }
// }
//
// class Api_List extends StatefulWidget {
//   const Api_List({Key? key}) : super(key: key);
//
//   @override
//   State<Api_List> createState() => _Api_ListState();
// }
//
// class _Api_ListState extends State<Api_List> {
//   late Future<List<Post>> postData;
//
//   @override
//   void initState() {
//     super.initState();
//     postData = fetchPost();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("APi Post"),
//         ),
//         body: Center(
//           child: FutureBuilder<List<Post>>(
//             future: postData,
//             builder: (context,  snapshot) {
//               if (snapshot.hasData){
//                 List<Post>? posts = snapshot.data;
//                 return ListView.builder(
//                   itemCount: posts!.length,
//                   itemBuilder: (context, index){
//                     return ListTile(
//                       title: Text(posts[index].title),
//                       subtitle: Text(posts[index].body),
//                     );
//                   },
//                 );
//
//               }else if (snapshot.hasError){
//                 return Text("${snapshot.error}");
//               }
//               return CircularProgressIndicator();
//
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// import 'dart:convert';
// import 'package:api/comments_details.dart';
// import 'package:http/http.dart' as http;
// import 'package:flutter/material.dart';
// import 'package:api/comments.dart';
//
// Future<List<Comments>> fetchComments() async {
//   var response = await http
//       .get(Uri.parse("https://jsonplaceholder.typicode.com/comments"));
//   if (response.statusCode == 200) {
//     List jsonResponse = jsonDecode(response.body);
//     return jsonResponse.map((data) => Comments.fromJson(data)).toList();
//   } else {
//     throw Exception("Unexpected Error");
//   }
// }
//
// void main() {
//   runApp(api_comments());
// }
//
// class api_comments extends StatefulWidget {
//   const api_comments({Key? key}) : super(key: key);
//
//   @override
//   State<api_comments> createState() => _api_commentsState();
// }
//
// class _api_commentsState extends State<api_comments> {
//   late Future<List<Comments>> commentsData;
//
//   @override
//   void initState() {
//     super.initState();
//     commentsData = fetchComments();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Api Comments"),
//         ),
//         body: Center(
//           child: FutureBuilder<List<Comments>>(
//             future: commentsData,
//             builder: (context, snapshot) {
//               if (snapshot.hasData) {
//                 List<Comments> commentList = snapshot.data!;
//                 return ListView.builder(
//                     itemCount: commentList.length,
//                     itemBuilder: (context, index) {
//                       return Card(
//                         child: Container(
//                           margin: EdgeInsets.all(8),
//                           child: Column(
//                             children: [
//                               ListTile(
//                                 onTap: (){
//                                   Navigator.push(context, MaterialPageRoute(
//                                       builder: (builder){
//                                         return CommentsDetails(commentList[index]);
//                                       }
//                                   ));
//                                 },
//                                 leading: CircleAvatar(
//                                   backgroundImage: NetworkImage(
//                                       "https://cdn3.vectorstock.com/i/1000x1000/30/97/flat-business-man-user-profile-avatar-icon-vector-4333097.jpg"),
//                                 ),
//                                 title: Text(commentList[index].email),
//                                 subtitle: Text(commentList[index].body),
//                               )
//                             ],
//                           ),
//                         ),
//                       );
//                     });
//               } else if (snapshot.hasError) {
//                 return Text("${snapshot.error}");
//               }
//               return CircularProgressIndicator();
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }
