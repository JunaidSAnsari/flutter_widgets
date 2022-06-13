import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main (){
  runApp(FloatingactionButton());
}

class FloatingactionButton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Floating Action Button"),
        ),
        body: Center(
          child: Text("Floating Action Button", style: TextStyle(fontSize: 30),),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: (){
            },
          child: Icon(Icons.add),
          backgroundColor: Colors.amber,
        ),


      ),
    );
  }
}
