import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/logic/get_matrialcolor_of_conditional_day.dart';
import 'package:weather_app/pages/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetWeatherCubit(),
      child: CustomMatrialApp(),
    );
  }
}

class CustomMatrialApp extends StatelessWidget {
  const CustomMatrialApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: getWeatherColor(BlocProvider.of<GetWeatherCubit>(context).weatherModel?.weatherCondition)),
      home: HomeScreen(),
    );
  }
}
