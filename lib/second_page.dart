import 'package:flutter/material.dart';
import 'package:hello_world/third_page.dart';

void main() {
  runApp(SecondPage());
}
class SecondPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Navigaton"),),
        body: ElevatedButton(
          child: Text("Go to third screen"),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
              return ThirdPage();
            }
            )
            );
          }
        ),
      ),
    );
  }
}


