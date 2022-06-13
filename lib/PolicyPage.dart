import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class policyPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text("Our Policy"),
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
