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

    // set background image
    String backgroundImage = loadedData['isDayTime'] ? 'day3bright.jpeg' : 'night1dark.jpeg';
    Color? backgroundColor = loadedData['isDayTime'] ? Colors.blue[900] : Colors.deepPurple[900];


    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/$backgroundImage'),
              fit: BoxFit.cover,

            ),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 300, 0, 0),
            child: Column(
              children: [
                FlatButton.icon(
                    onPressed: () async{
                      dynamic chosenResult = await Navigator.pushNamed(context, '/location');
                    },
                    icon: Icon(
                      Icons.edit_location,
                      color: Colors.white,
                    ),
                    label: Text(
                        'Select location',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                      ),
                    )
                ),
                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(loadedData['location'],
                      style: TextStyle(
                        color: Colors.white,
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
                    color: Colors.white,
                    fontSize: 60.0,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
