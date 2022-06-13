import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class contactUs extends StatelessWidget {
  const contactUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text("Contact us"),
              ),
              ElevatedButton(
                  onPressed: (){
                    Navigator.pop(context);
                  }, child: Text("Go Back"))
            ],
          ),
        ),
      )
    );
  }
}
