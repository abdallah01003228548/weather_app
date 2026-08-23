import 'package:flutter/material.dart';

class NoWeather extends StatelessWidget {
  const NoWeather({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'there is no weather 😔 start',
            style: TextStyle(fontSize: 28),
          ),
          Text(
            'checking now 🔍',
            style: TextStyle(fontSize: 28),
          ),
        ],
      ),
    ),
  );
  }
}