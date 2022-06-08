
import 'package:flutter/material.dart';
import 'package:hello_world/second_page.dart';
import 'package:hello_world/third_page.dart';

void main () {
  runApp(MaterialApp(
    home: SecondPage(),
  ));
}
class SecondPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Second Page"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text("Go to third page"),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                  return ThirdPage();
                }
                )
                );
              },
            ),
            ElevatedButton(
              child: Text("Go back"),
              onPressed: (){
                Navigator.pop(context);
              },
            ),
          ],
        ),
      )
    );
  }
}
