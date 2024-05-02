import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app_finsh/views/search_view.dart';
import 'package:weather_app_finsh/widgets/weather_info_body.dart';

import '../cubit/get_weather_cubit/get_weather_cubit.dart';
import '../cubit/get_weather_cubit/get_weather_state.dart';
import '../widgets/no_weather_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather App'),
        actions: [
          IconButton.filledTonal(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return const SearchView();
                }));
              },
              icon: const Icon(Icons.search))
        ],
      ),

      // this is to losnar to cubit
      body: BlocBuilder<GetWeatherCubit, WeatherState>(
        builder: (context, state) {
          if (state is WeatherInitialState) {
            return const NoWeatherBody();
          } else if (state is WeatherLoadedState) {
            return const WeatherInfoView();
          } else {
            return const Text('opps there was an error');
          }
        },
      ),
    );
  }
}
