import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TextField"),
      ),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                onSubmitted: (String text) {
                  debugPrint("Onpressed function is called");
                },
                decoration: InputDecoration(
                    labelStyle:
                        TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
                    prefixIcon: Icon(Icons.person),
                    labelText: "Name",
                    hintText: "Enter Name",
                    border: OutlineInputBorder()),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: TextField(
                decoration: InputDecoration(
                    labelStyle:
                        TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
                    prefixIcon: Icon(Icons.email),
                    labelText: "Email",
                    hintText: "Enter Email",
                    border: OutlineInputBorder()),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: TextField(
                decoration: InputDecoration(
                    labelStyle:
                        TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
                    prefixIcon: Icon(Icons.phone),
                    labelText: "Contact",
                    hintText: "Phone Number",
                    border: OutlineInputBorder()),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: ElevatedButton(
                child: Text(
                  "Submit",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),
                ),
                onPressed: () {
                  // openAlertBox(context);
                  AlertDialog alertDialogue = AlertDialog(
                    title: Center(child: Text("Alert")),
                    content: Text("Are you sure to submit this form?"),
                    actions: [
                      TextButton(
                          onPressed: (){
                            Navigator.pop(context);
                          },
                          child: Text("No")
                      ),
                      TextButton(
                          onPressed: (){
                            print("Submitted");
                          },
                          child: Text("Yes")
                      )
                    ],
                  );
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return alertDialogue;
                      });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
  // openAlertBox(BuildContext context){
  //   AlertDialog alertDialog = AlertDialog(
  //     title: Text("Alert"),
  //     content: Text("Are you sure to sbmit?"),
  //   );
  //   showDialog(context: context, builder: (BuildContext context){
  //     return alertDialog;
  //   });
  // }
}
