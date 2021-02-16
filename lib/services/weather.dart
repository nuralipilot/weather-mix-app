import 'package:http/http.dart';

import 'package:weather_mix_app/models/weather_model.dart';

import 'dart:convert';

class Weather {
  String type;
  String cityName;
  Weather({this.type, this.cityName});

  Future<void> fetchData() async {
    var response = await get(
        'http://api.openweathermap.org/data/2.5/weather?q=Almaty&appid=b5109683f475629728f9e1121fa88ba0');

    var r = json.decode(response.body);
    var weather = r['weather'];
    type = weather[0]['main'];
    cityName = r['name'];

    return Future.delayed(Duration(seconds: 1));
  }
}
