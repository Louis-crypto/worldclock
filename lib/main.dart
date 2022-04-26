import 'package:flutter/material.dart';
import 'package:world_time/Screentivities/Home.dart';
import 'package:world_time/Screentivities/progressbar.dart';

import 'Screentivities/location.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/',
  routes: {
    '/' : (context) => ProgressActivity(),
    '/home' : (context) => Home(),
    '/location' : (context) => Location(),
  },
));
