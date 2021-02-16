import 'package:flutter/material.dart';
import 'package:weather_mix_app/views/home/home.dart';

void main() => runApp(MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
      },
    ));
