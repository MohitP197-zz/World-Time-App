import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // Instially declaring empty map when starting
  Map data = {};
  @override
  Widget build(BuildContext context) {
    // Receive actual arguments from loading.dart page

    data = ModalRoute.of(context).settings.arguments;

    print(data);

    return Scaffold(
      // Safe area pushed child to the safer area where it can be seen
      body: SafeArea(
        child: Column(
          children: <Widget>[
            FlatButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, '/location');
              },
              icon: Icon(Icons.edit_location),
              label: Text(
                'Edit Location',
              ),
            )
          ],
        ),
      ),
    );
  }
}
