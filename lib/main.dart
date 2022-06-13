import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BottomNavDesign());
}

class BottomNavDesign extends StatefulWidget {
  const BottomNavDesign({Key? key}) : super(key: key);

  @override
  State<BottomNavDesign> createState() => _BottomNavDesignState();
}

class _BottomNavDesignState extends State<BottomNavDesign> {
  int selectedTabIndex = 0;
  List<Widget> list = <Widget>[
    Container(
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
                        onPressed: () {
                          // Navigator.pop(context);
                        },
                        child: Text("No")),
                    TextButton(
                        onPressed: () {
                          print("Submitted");
                        },
                        child: Text("Yes"))
                  ],
                );
              },
            ),
          ),
        ],
      ),
    ),
    Center(
      child: ElevatedButton(onPressed: () {}, child: Text("Second Tab")),
    ),
    ListTile(
      leading: Icon(Icons.person),
      title: Text("Third Tab"),
      subtitle: Text("Its third tab"),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("NavBar Design")),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.radio), label: "Radio"),
            BottomNavigationBarItem(
                icon: Icon(Icons.contact_mail), label: "Contact"),
            BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chat"),
          ],
          backgroundColor: Colors.red,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.black,
          currentIndex: selectedTabIndex,
          onTap: (index) {
            setState(() {
              selectedTabIndex = index;
            });
          },
        ),
        body: list.elementAt(selectedTabIndex),
      ),
    );
  }
}
