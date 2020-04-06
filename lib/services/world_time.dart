import 'package:http/http.dart';
import 'dart:convert';

class WorldTime {
  String location; //location name for the ui
  String time; //time for the ui
  String flag; //url to asset flag icon
  String url; //location url for api end point

  WorldTime({this.location, this.flag, this.url});

  Future<void> getTime() async {
    try {
      // make the request
      Response response =
          await get('http://worldtimeapi.org/api/timezone/$url');
      Map data = jsonDecode(response.body);

      // print(data['datetime']);

      // Get properties from data
      String datetime = data['datetime'];

      String offset = data['utc_offset'].substring(1, 3);

      DateTime now = DateTime.parse(datetime);

      now = now.add(Duration(hours: int.parse(offset)));

      // Set the time property
      time = now.toString();
    } catch (e) {
      print('caught error: $e');

      time = 'Could not get time data';
    }
  }
}
