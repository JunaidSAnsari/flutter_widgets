import 'package:flutter/material.dart';
import 'comments.dart';

class CommentsDetails extends StatelessWidget {
  late String commentsName;
  late String commentsBody;

  CommentsDetails(Comments singleCommentData){
    commentsName = singleCommentData.name;
    commentsBody = singleCommentData.body;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Comments Ddetais Page"),),
        body: Column(
          children: [
            ListTile(
              title: Text(commentsName),
              subtitle: Text(commentsBody),
            ),
            ElevatedButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                child: Text("Back")
            ),
          ],
        ),
      ),
    );
  }
}
