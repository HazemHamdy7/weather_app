import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app_finsh/service/weather_service.dart';
import '../../model/weather_model.dart';
import 'get_weather_state.dart';

class GetWeatherCubit extends Cubit<WeatherState> {
  GetWeatherCubit() : super(WeatherInitialState());
  late WeatherModel weatherModel;
  // create function

  getWeathrer({required String cityName}) async {
    try {
      weatherModel =
          await WeatherSeavice(Dio()).getCurrentWeather(cityName: cityName);
      emit(WeatherLoadedState());
    } catch (e) {
      emit(WeatherFailureState(e.toString()));
    }
  }
}
