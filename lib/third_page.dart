import 'package:flutter/material.dart';

void main() {
  runApp(ThirdPage());
}
class ThirdPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Navigaton"),),
        body: ElevatedButton(
          child: Text("Go back"),
          onPressed: (){
            Navigator.pop(context);
            }
            )
    )
    );
  }
}


