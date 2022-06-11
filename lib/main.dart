import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:untitled1/post.dart';
import 'package:http/http.dart' as http;
import 'package:untitled1/postDetail.dart';

void main() {
  runApp(api_post());
}

Future<List<Post>> fetchPost() async {
  var response =
      await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));
  if (response.statusCode == 200) {
    List jsonResponse = jsonDecode(response.body);
    return jsonResponse.map((data) => Post.fromJson(data)).toList();
  } else {
    throw Exception("Unexpected Error");
  }
}

class api_post extends StatefulWidget {
  const api_post({Key? key}) : super(key: key);

  @override
  State<api_post> createState() => _api_postState();
}

class _api_postState extends State<api_post> {
  Future<List<Post>>? fetchData;

  @override
  void initState() {
    super.initState();
    fetchData = fetchPost();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Api Post"),
        ),
        body: Center(
          child: FutureBuilder<List<Post>>(
            future: fetchData,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                List<Post> posts = snapshot.data!;
                return ListView.builder(
                  itemCount: posts.length,
                  itemBuilder: (context, index) {
                    return Card(
                      child: Container(
                        child: Column(
                          children: [
                            ListTile(
                              leading: CircleAvatar(
                                backgroundImage: NetworkImage(
                                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTq2hiMM4LY3J-nPX9QFO0URL2siUWeJP-t-A&usqp=CAU"),
                              ),
                              title: Text(posts[index].title),
                              subtitle: Text(posts[index].body),
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (builder){
                                      return PostDetails(posts[index]);
                                    }
                                )
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              } else if (snapshot.hasError) {
                return Text("${snapshot.error}");
              }
              return CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
}
