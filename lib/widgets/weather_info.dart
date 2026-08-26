import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/data/model/weather_model.dart';

class WeatherInfo extends StatelessWidget {
  const WeatherInfo({super.key});

  @override
  Widget build(BuildContext context) {
    WeatherModel weatherModel = BlocProvider.of<GetWeatherCubit>(
      context,
    ).weatherModel!;
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            weatherModel.cityName,
            style: const TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
          ),
          Text(
            "Updata at:${weatherModel.date.hour}:${weatherModel.date.minute}",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.network("https:${weatherModel.image}"),
                Text(
                  weatherModel.temp.toString(),
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                ),
                Column(
                  children: [
                    Text(
                      'max temp: ${weatherModel.maxTemp.round()}',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      'min temp: ${weatherModel.minTemp.round()}',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Text(
            weatherModel.weatherCondition,
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
