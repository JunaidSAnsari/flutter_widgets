import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_pref/AboutUs.dart';
import 'package:shared_pref/PolicyPage.dart';
import 'package:shared_pref/contactUs.dart';

void main (){
  runApp(MaterialApp(
    home: DrawerDesign()
  ));
}

class DrawerDesign extends StatelessWidget {
  const DrawerDesign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Drawer Design"),),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                  child: Text("Drawer Header"),
                decoration: BoxDecoration(
                  color: Colors.red
                ),
              ),
              ListTile(
                title: Text("Contact Us"),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return contactUs();
                  }
                  )
                  );
                },
              ),
              ListTile(
                title: Text("Policy"),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return policyPage();
                  })
                  );
                },
              ),
              ListTile(
                title: Text("About Us"),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return aboutUs();
                  })
                  );
                },
              ),


            ],
          ),
        ),
      body: Center(
        child: Text("Drawer Navigation Design"),
      ),

    );
  }
}
