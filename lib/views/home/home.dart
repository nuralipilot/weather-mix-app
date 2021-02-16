import 'package:flutter/material.dart';
import 'package:weather_mix_app/models/weather_model.dart';
import 'package:weather_mix_app/services/weather.dart';

import 'package:weather_mix_app/views/home/widgets/home_main.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool _loading = true;
  String cityName;
  String type;

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  void fetchData() async {
    Weather weather = Weather();
    await weather.fetchData();
    setState(() {
      _loading = false;
      cityName = weather.cityName;
    });
  }

  @override
  Widget build(BuildContext context) {
    return _loading
        ? Container(
            color: Colors.white,
            child: Center(
              child: CircularProgressIndicator(),
            ),
          )
        : MaterialApp(
            theme: ThemeData(primaryColor: Colors.white),
            home: Scaffold(
              appBar: AppBar(
                toolbarHeight: 100,
                title: Text(cityName),
                centerTitle: true,
                backgroundColor: Colors.transparent,
                elevation: 0.0,
              ),
              body: Container(
                child: HomeMain(
                  type: type,
                  cityName: cityName,
                ),
              ),
            ),
          );
  }
}
