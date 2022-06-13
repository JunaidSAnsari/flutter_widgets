import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class aboutUs extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text("About us"),
              ),
              ElevatedButton(
                  onPressed: (){
                    Navigator.pop(context);
                  }, child: Text("Go Back"))
            ],
          ),
        ),
      ),
    );
  }
}
