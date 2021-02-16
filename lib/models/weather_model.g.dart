// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherModel _$WeatherModelFromJson(Map<String, dynamic> json) {
  return WeatherModel(
    query: json['query'] as String,
    temp: json['temp'] as String,
    feelslike: json['feelslike'] as String,
  );
}

Map<String, dynamic> _$WeatherModelToJson(WeatherModel instance) =>
    <String, dynamic>{
      'query': instance.query,
      'temp': instance.temp,
      'feelslike': instance.feelslike,
    };
