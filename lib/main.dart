import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("ListView Design"),
      ),
      body: ListViewDesign(),
    ),
  ));
}

class ListViewDesign extends StatelessWidget {
  List<String> months = [
    "Jan",
    "Feb",
    "March",
    "April",
    "May",
    "June",
    "July",
    "Aug",
    "Sep",
    "Oct",
    "Nov",
    "Dec"
  ];
  List <int> colourNo = [100,200,300,400,500,600,700,800,900,800,700,600];

  @override
  Widget build(BuildContext context) {
    //ListView Builder
    return ListView.builder(
        itemCount: months.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 70,
            color: Colors.amber[colourNo[index]],
            child: Center(child: Text("${months[index]}")),
          );
        });
  }
}
