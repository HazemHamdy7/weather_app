import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app_finsh/cubit/get_weather_cubit/get_weather_cubit.dart';
import 'views/home_view.dart';

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
      child: const MaterialApp(
        home: HomeView(),
      ),
    );
  }
}
