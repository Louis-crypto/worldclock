import 'package:http/http.dart';
import 'dart:convert';

import 'package:intl/intl.dart';

class WorldTime{
  String location;
  String time = "";
  String flag;
  String urrl;
  late bool isDayTime;


  WorldTime(this.location, this.flag, this.urrl);

  // make request to worldtimeAPI
  Future<void> getTime() async {

    try{
      var url = Uri.parse('https://worldtimeapi.org/api/timezone/$urrl');
      Response response = await get(url);
      Map receiveData = jsonDecode(response.body);

      // get data from map after decoding
      String datetime = receiveData['datetime'];
      String offset = receiveData['utc_offset'].substring(0, 3);

      //create datetime format
      DateTime currentTime = DateTime.parse(datetime);
      currentTime = currentTime.add(Duration(hours: int.parse(offset)));

      isDayTime = currentTime.hour > 6 && currentTime.hour < 19 ? true : false;

      time = DateFormat.jm().format(currentTime);
    }catch(e){
      time = 'couldnot reach server';
    }

  }

}