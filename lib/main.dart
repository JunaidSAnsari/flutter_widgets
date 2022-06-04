import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String studentIntro = "Empty";
  @override
  Widget build(BuildContext context) {
    debugPrint("Calling build function");
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Statefull Widget"),),
        body: Container(
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  labelText: "Name",
                  hintText: "Enter Name",
                ),
                onSubmitted: (String text){
                  setState((){
                    debugPrint("Calling set state function");
                    studentIntro = text;
                  });
                },
              ),
              Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Text("Student Intro: $studentIntro")),
            ],
          ),
        ),
      ),
    );
  }
}
