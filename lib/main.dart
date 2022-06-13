import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: dropDownDesign(),
  ));
}

class dropDownDesign extends StatefulWidget {
  const dropDownDesign({Key? key}) : super(key: key);

  @override
  State<dropDownDesign> createState() => _dropDownDesignState();
}

class _dropDownDesignState extends State<dropDownDesign> {
  List<String> list = ["Select Country", "Pakistan", "India", "Bangladesh"];
  String selectedCounry = "Select Country";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drop Down Menu"),
      ),
      body: Center(
        child: DropdownButton<String>(
          items: list.map<DropdownMenuItem<String>>((String v) {
            return DropdownMenuItem<String>(
              child: Text(v),
              value: v,
            );
          }).toList(),
          value: selectedCounry,
          onChanged: (String? newCountry) {
            setState(() {
              selectedCounry = newCountry!;
            });
          },
        ),
      ),
    );
  }
}
