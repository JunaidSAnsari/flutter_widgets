import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<void> main() async {
  var url = Uri.parse('https://yashigarments.com/mobile_api.php');
  var response = await http.get(url);
  Map<String, dynamic> res = jsonDecode(response.body);

  runApp(MaterialApp(
    home:Scaffold(
      appBar: AppBar(title: Text("Http example"),),
      body: ListTile(
        onTap: (){},
        leading: Icon(Icons.person),
        title: Text(res["name"].toString()),
        subtitle: Text("Roll No is: ${res["roll_no"].toString()}"),
        trailing: Icon(Icons.arrow_forward),
      )
    ),
  ));
}