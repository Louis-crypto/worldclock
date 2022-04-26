import 'package:flutter/material.dart';

class Location extends StatefulWidget {

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
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
      body: Text(
        'location activity'
      ),
    );
  }
}
