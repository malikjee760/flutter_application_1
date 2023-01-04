import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() async {
  List myData = await getjsonData();
  print(myData);

  runApp(new MaterialApp(
    title: "API",
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
      ),
      //body: ,
    ),
  ));
}

Future<List> getjsonData() async {
  String url = 'https://jsonplaceholder.typicode.com/posts';

  http.Response response = await http.get(Uri.parse(url));

  return jsonDecode(response.body);
}
