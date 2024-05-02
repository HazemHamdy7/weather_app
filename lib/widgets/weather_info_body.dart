import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app_finsh/cubit/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app_finsh/cubit/get_weather_cubit/get_weather_state.dart';
import 'package:weather_app_finsh/test.dart';
import 'package:weather_app_finsh/views/search_view.dart';

import 'no_weather_body.dart';

class WeatherInfoView extends StatelessWidget {
  const WeatherInfoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 100),
            const Text('Alexandria',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const Text('Updated at 23:46', style: TextStyle(fontSize: 20)),
            const SizedBox(height: 32),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                        height: 50,
                        width: 50,
                        child: Image.asset('assets/three.jpg',
                            fit: BoxFit.contain)),
                    const Text('17',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold)),
                    const Column(children: [
                      Text('Max temp 17',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16)),
                      Text('Min temp 10',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16)),
                    ])
                  ]),
            ),
            const Text('Light Rain',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const SizedBox(height: 125),
            MaterialButton(
                color: Colors.black,
                child: const Text(
                  ' More ',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const WeatherInfoModern();

                    // return BlocBuilder<GetWeatherCubit, WeatherState>(
                    //   builder: (context, state) {
                    //     if (state is WeatherInitialState) {
                    //       return const NoWeatherBody();
                    //     } else if (state is WeatherLoadedState) {
                    //       return const WeatherInfoView();
                    //     } else {
                    //       return const Text('opps there was an error');
                    //     }
                    //   },
                    // );
                  }));
                })
          ],
        ),
      ),
    );
  }
}
