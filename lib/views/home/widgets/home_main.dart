import 'package:flutter/material.dart';

class HomeMain extends StatelessWidget {
  String cityName;
  String type;
  HomeMain({this.cityName, this.type});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(cityName),
    );
  }
}
