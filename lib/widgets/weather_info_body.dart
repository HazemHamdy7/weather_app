import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app_finsh/cubit/get_weather_cubit/get_weather_cubit.dart';

import '../test.dart';

class WeatherInfoView extends StatelessWidget {
  const WeatherInfoView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var weatherModel = BlocProvider.of<GetWeatherCubit>(context).weatherModel;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 100),
            Text(weatherModel.cityName,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            Text(weatherModel.date, style: const TextStyle(fontSize: 20)),
            const SizedBox(height: 32),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.network("https:${weatherModel.image}",
                        fit: BoxFit.contain),
                    Text('${weatherModel.temp}°',
                        style: const TextStyle(
                            fontSize: 32, fontWeight: FontWeight.bold)),
                    Column(children: [
                      Text('Max temp: ${weatherModel.maxTemp}°',
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16)),
                      Text('Min temp: ${weatherModel.minTemp}°',
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16)),
                    ])
                  ]),
            ),
            const SizedBox(height: 32),
            Text(weatherModel.weatherStatus,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const SizedBox(height: 40),
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
