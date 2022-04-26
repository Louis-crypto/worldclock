import 'package:flutter/material.dart';
import 'package:world_time/services/worldtime.dart';

class Location extends StatefulWidget {

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {

  List<WorldTime> locations = [
    WorldTime('Accra', 'flag', 'Africa/Accra'),
    WorldTime('Chicago', 'flag', 'America/Chicago'),
    WorldTime('Denver', 'flag', 'America/Denver'),
    WorldTime('Dubai', 'flag', 'Asia/Dubai'),
    WorldTime('London', 'flag', 'Europe/London'),
    WorldTime('Mauritius', 'flag', 'Indian/Mauritius'),
    WorldTime('Nairobi', 'flag', 'Africa/Nairobi'),
    WorldTime('Rome', 'flag', 'Europe/Rome'),
    WorldTime('Shanghai', 'flag', 'Asia/Shanghai'),
    WorldTime('Sydney', 'flag', 'Australia/Sydney'),
  ];

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
          return Card(
            child: ListTile(
              onTap: (){},
              title: Text(locations[index].location),
            ),
          );
        },
      ),
    );
  }
}
