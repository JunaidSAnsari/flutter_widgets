import 'package:flutter/material.dart';

void main() {
  runApp(TabBarDesign());
}
class TabBarDesign extends StatelessWidget {
  const TabBarDesign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(title: Text("Tab Bar Design"),

          ),

        ),
      ),
    );
  }
}



