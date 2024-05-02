import 'package:flutter/material.dart';
import 'package:weather_app_finsh/widgets/weather_info_body.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Search City'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: TextField(
              onSubmitted: (value) async {
                // WeatherModel weatherModel = await WeatherSeavice(Dio())
                //     .getCurrentWeather(cityName: value);
                // log(weatherModel.date);
              },
              decoration: InputDecoration(
                label: const Text('Search'),
                hintText: 'Enter city name',
                helperStyle: const TextStyle(fontSize: 18),
                suffixIcon: IconButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return const WeatherInfoView();
                          },
                        ),
                      );
                    },
                    icon: const Icon(Icons.search)),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(color: Colors.blue),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(color: Colors.blue),
                ),
              ),
            ),
          ),
        ));
  }
}



// f65075417336485388273336241603