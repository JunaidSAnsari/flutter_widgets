
import 'package:flutter/material.dart';

void main(){
  runApp(TabBarDesign());
}
class TabBarDesign extends StatelessWidget {
  const TabBarDesign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(title: Text("Tab Bar Design"),
            bottom: TabBar(
              tabs: [
                Tab(
                  child: Text("Train"),
                  icon: Icon(Icons.train),
                ),
                Tab(
                  child: Text("Bike"),
                  icon: Icon(Icons.motorcycle),
                ),
                Tab(
                  child: Text("Bus"),
                  icon: Icon(Icons.bus_alert),
                ),
                Tab(
                  child: Text("Car"),
                  icon: Icon(Icons.car_crash),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Center(child: Text("First Tab")),
              Center(child: Text("Second Tab")),
              Center(child: Text("Third Tab")),
              Center(child: Text("Fourth Tab"))
            ],
          ),
        ),
      ),
    );
  }
}
