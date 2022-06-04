import 'dart:math';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  getImage() {
    AssetImage assetImage = AssetImage("images/money.png");
    Image image = Image(
      image: assetImage,
      height: 150,
    );
    return Container(
      padding: EdgeInsets.only(top: 30, bottom: 30),
      child: image,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Interest Calculator App",
      theme: ThemeData(primarySwatch: Colors.purple),
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.calculate),
          title: Text("Interest Calculator", style: TextStyle(fontSize: 25),),
        ),
        body: Container(
          color: Colors.black87,
          child: Column(
            children: [
              getImage(),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  decoration: InputDecoration(

                    prefixIcon: Icon(Icons.money, color: Colors.white70,),
                    labelText: "Principal",
                    labelStyle: TextStyle(color: Colors.white70),
                    hintText: "Principal",
                    focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white70)),
                    enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white70)),
                  ),

                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.rate_review, color: Colors.white70,),
                    labelText: "Interest",
                    labelStyle: TextStyle(color: Colors.white70),
                    hintText: "Rate of Interest",
                    focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white70)),
                    enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white70)),
                  ),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.telegram, color: Colors.white70,),
                            labelText: "Term",
                            labelStyle: TextStyle(color: Colors.white70),
                            hintText: "Term",
                          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white70)),
                          enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white70)),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.currency_rupee, color: Colors.white70,),
                            labelText: "Rupees",
                            labelStyle: TextStyle(color: Colors.white70),
                            hintText: "Rupees",
                          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white70)),
                          enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white70)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.only(top: 20, left: 10, right: 10),
                child: Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
                              primary: Colors.purple.shade600
                          ),
                          onPressed: () {},
                          child: Text("Calculate", style: TextStyle(color: Colors.black, fontSize: 25),)),
                    ),
                    Expanded(
                      child: ElevatedButton(
                          style:
                              ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
                                  primary: Colors.black),
                          onPressed: () {},
                          child: Text("Reset", style: TextStyle(color: Colors.white70, fontSize: 25),)),
                    ),
                    // Expanded(
                    //     child: ElevatedButton(
                    //         onPressed: () {},
                    //         child: Text("Third"),
                    //         style: ElevatedButton.styleFrom(
                    //             primary: Colors.redAccent,
                    //             side: BorderSide(width: 3, color: Colors.brown),
                    //             elevation: 3,
                    //             shape: RoundedRectangleBorder(
                    //                 borderRadius: BorderRadius.circular(0)
                    //             ),
                    //             padding: EdgeInsets.all(
                    //                 20) //content padding inside button
                    //             )))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
