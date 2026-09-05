import 'package:flutter/material.dart';

MaterialColor getWeatherColor(String ? day) {
  if(day == null){
    return Colors.blue;
  }
  switch (day.toLowerCase()) {
    case 'sunny':
      return Colors.orange;

    case 'partly cloudy':
      return Colors.blue;

    case 'cloudy':
      return Colors.blueGrey;

    case 'overcast':
      return Colors.grey;

    case 'haze':
    case 'dust haze':
    case 'blowing dust':
    case 'dust storm':
    case 'sandstorm':
    case 'severe sandstorm':
    case 'saharan dust':
    case 'dust':
      return Colors.brown;

    case 'mist':
    case 'smoke':
    case 'smoky haze':
    case 'smog':
    case 'severe smog':
    case 'fog':
    case 'freezing fog':
      return Colors.grey;

    case 'patchy rain possible':
    case 'patchy light rain':
    case 'light rain':
    case 'moderate rain at times':
    case 'moderate rain':
    case 'heavy rain at times':
    case 'heavy rain':
    case 'light rain shower':
    case 'moderate or heavy rain shower':
    case 'torrential rain shower':
      return Colors.indigo;

    case 'patchy snow possible':
    case 'patchy light snow':
    case 'light snow':
    case 'patchy moderate snow':
    case 'moderate snow':
    case 'patchy heavy snow':
    case 'heavy snow':
    case 'light snow showers':
    case 'moderate or heavy snow showers':
    case 'blowing snow':
    case 'blizzard':
      return Colors.lightBlue;

    case 'patchy sleet possible':
    case 'light sleet':
    case 'moderate or heavy sleet':
    case 'light sleet showers':
    case 'moderate or heavy sleet showers':
      return Colors.teal;

    case 'patchy light drizzle':
    case 'light drizzle':
    case 'freezing drizzle':
    case 'heavy freezing drizzle':
    case 'patchy freezing drizzle possible':
    case 'light freezing rain':
    case 'moderate or heavy freezing rain':
      return Colors.cyan;

    case 'ice pellets':
    case 'light showers of ice pellets':
    case 'moderate or heavy showers of ice pellets':
      return Colors.blueGrey;

    case 'thundery outbreaks possible':
    case 'patchy light rain with thunder':
    case 'moderate or heavy rain with thunder':
    case 'patchy light snow with thunder':
    case 'moderate or heavy snow with thunder':
      return Colors.deepPurple;

    default:
      return Colors.blue;
  }
}