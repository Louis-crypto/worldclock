import 'package:flutter/material.dart';

class Home  extends StatefulWidget {

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map loadedData = {};

  @override
  Widget build(BuildContext context) {

    loadedData = ModalRoute.of(context)!.settings.arguments as Map;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 120, 0, 0),
          child: Column(
            children: [
              FlatButton.icon(
                  onPressed: (){
                    Navigator.pushNamed(context, '/location');
                  },
                  icon: Icon(Icons.edit_location),
                  label: Text('Select location')
              ),
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(loadedData['location'],
                    style: TextStyle(
                      fontSize: 28.0,
                      letterSpacing: 2.0
                    ),
                  ),

                ],
              ),
              SizedBox(height: 20.0),
              Text(
                loadedData['time'],
                style: TextStyle(
                  fontSize: 60.0,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
