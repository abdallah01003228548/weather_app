import 'package:flutter/material.dart';

class WeatherInfo extends StatelessWidget {
  const WeatherInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          const Text(
            'Alexandria',
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
          ),
          const Text(
            'updated at : 32:46',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset('assets/images/rainy.png'),
                const Text(
                  '17',
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                ),
                Column(
                  children: [
                    const Text(
                      'max temp:17',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const Text(
                      'min temp:12',
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
          const Text(
            'Light Rain',
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
