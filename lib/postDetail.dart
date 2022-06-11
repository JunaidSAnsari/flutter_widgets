import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/post.dart';

class PostDetails extends StatelessWidget {
  late String postTitle;
  late String postBody;

  PostDetails(Post data){
    postTitle = data.title;
    postBody = data.body;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("Post details"),),
        body: Center(
          child: Container(
            margin: EdgeInsets.all(8),
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                ListTile(
                  title: Center(child: Text(postTitle)),
                  subtitle: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(postBody),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: ElevatedButton(
                      onPressed: (){
                        Navigator.pop(context);
                      },
                      child: Text("Back")),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
