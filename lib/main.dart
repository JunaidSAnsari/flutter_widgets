
import 'package:flutter/material.dart';
import 'package:hello_world/second_page.dart';

void main () {
  runApp(MaterialApp(
    home: Navigation(),
  ));
}
class Navigation extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Navigation"),),
        body: Center(
          child: ElevatedButton(
            child: Text("Go to second page"),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                return SecondPage();
              }));
            },
          ),
        ),
    );
  }
}
