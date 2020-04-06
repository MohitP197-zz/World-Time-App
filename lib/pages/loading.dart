import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  // If some data depends on another data from another request or function then we need to
  // make the function synchronos and use the combination of asyncronous function (async) after parenthesis
  // and before curly braces with await keyword
  void getData() async {
    Response response =
        await get('https://jsonplaceholder.typicode.com/todos/1');

    Map data = jsonDecode(response.body);

    print(data['title']);
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('Loading Screen'),
    );
  }
}
