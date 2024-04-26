import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart'; // Added import for Lottie package
import 'package:weather_app_1/models/weather_model.dart';
import 'package:weather_app_1/services/weather_service.dart';

class WeatherPage extends StatefulWidget {
  const WeatherPage({Key? key}) : super(key: key);

  @override
  State<WeatherPage> createState() => WeatherPageState();
}

class WeatherPageState extends State<WeatherPage> {
  final weatherService = WeatherService('050598f88ba516b5a05294f2239c4160');
  Weather? _weather;

  @override
  void initState() {
    super.initState();
    _fetchWeather();
  }

  _fetchWeather() async {
    try {
      final cityName = await weatherService.getCurrentCity();
      final weather = await weatherService.getWeather(cityName);
      setState(() {
        _weather = weather;
      });
    } catch (e) {
      print(e);
    }
  }

  // Weather animation
  String getWeatherAnimation(String? mainCondition) {
    if (mainCondition == null) return 'assets/sunny.json'; // Fixed comparison operator and null check

    switch (mainCondition.toLowerCase()) {
      case 'clouds':
      case 'mist':
      case 'smoke':
      case 'haze':
      case 'fog':
      case 'dust':
        return 'assets/cloud.json';
      case 'rain':
      case 'drizzle':
      case 'shower rain':
        return 'assets/rain.json';
      case 'thunderstorm':
        return 'assets/thunder.json'; // Fixed file name
      case 'clear':
        return 'assets/sunny.json';
      default:
        return 'assets/sunny.json';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(_weather?.cityName ?? "Loading City"),
            Lottie.asset(getWeatherAnimation(_weather?.mainCondition)), // Updated Lottie.asset call
            Text('${_weather?.temperature.round()}°C'),
            Text(_weather?.mainCondition ?? ""), // Fixed null safety operator
          ],
        ),
      ),
    );
  }
}
