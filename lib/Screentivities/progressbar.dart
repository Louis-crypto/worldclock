import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:world_time/services/worldtime.dart';

class ProgressActivity extends StatefulWidget {

  @override
  State<ProgressActivity> createState() => _ProgressActivityState();
}

class _ProgressActivityState extends State<ProgressActivity> {

  void setUpWorldTime() async {
    WorldTime worldTime = WorldTime('Nairobi', 'flag', 'Africa/Nairobi');
    await worldTime.getTime();
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'location': worldTime.location,
      'flag': worldTime.flag,
      'time': worldTime.time,
      'isDayTime': worldTime.isDayTime,
    });
  }

@override
  void initState() {
    super.initState();
    setUpWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: SpinKitWanderingCubes(
            color: Colors.white,
            size: 50.0,
          ),
      ),
    );
  }
}
