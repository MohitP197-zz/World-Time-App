import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  // If some data depends on another data from another request or function then we need to
  // make the function synchronos and use the combination of asyncronous function (async) after parenthesis
  // and before curly braces with await keyword
  void getData() async {
    // Similate a network request for a username

    // After adding await, the function with await have to finish first, then only other function runs
    String username = await Future.delayed(Duration(seconds: 3), () {
      return 'Mohit';
    });

    // Simulate network request to get bio of the username
    String bio = await Future.delayed(Duration(seconds: 2), () {
      return 'Mohit, is a programmer';
    });

    print('$username - $bio');
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Choose a Location'),
        centerTitle: true,
        elevation: 0,
      ),
    );
  }
}
