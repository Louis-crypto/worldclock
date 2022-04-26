import 'package:flutter/material.dart';
import 'package:world_time/services/worldtime.dart';

class Location extends StatefulWidget {

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {

  List<WorldTime> locations = [
    WorldTime('Accra', 'ghanaflag.png', 'Africa/Accra'),
    WorldTime('Chicago', 'usaflag.png', 'America/Chicago'),
    WorldTime('Denver', 'usaflag.png', 'America/Denver'),
    WorldTime('Dubai', 'uaeflag.png', 'Asia/Dubai'),
    WorldTime('London', 'englandflag.png', 'Europe/London'),
    WorldTime('Mauritius', 'mauritiusflag.png', 'Indian/Mauritius'),
    WorldTime('Nairobi', 'kenyaflag.png', 'Africa/Nairobi'),
    WorldTime('Rome', 'italyflag.png', 'Europe/Rome'),
    WorldTime('Shanghai', 'chinaflag.png', 'Asia/Shanghai'),
    WorldTime('Sydney', 'australiaflag.png', 'Australia/Sydney'),
  ];

  void updateTime(index) async{
    WorldTime selectedLocation = locations[index];
    await selectedLocation.getTime();

    //navigate to homescreen
    Navigator.pop(context, {
      'location': selectedLocation.location,
      'flag': selectedLocation.flag,
      'time': selectedLocation.time,
      'isDayTime': selectedLocation.isDayTime,
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Select a location'),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: locations.length,
        itemBuilder: (context, index){
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 4.0),
            child: Card(
              child: ListTile(
                onTap: (){
                  updateTime(index);
                },
                title: Text(locations[index].location),
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/${locations[index].flag}'),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
