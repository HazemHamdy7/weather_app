import 'dart:developer';

import 'package:dio/dio.dart';

import '../model/weather_model.dart';

class WeatherSeavice {
  final Dio dio;
  final String baseUrl = 'http://api.weatherapi.com/v1';
  final String apiKey = '5f80508b0570487fa3a20822240205 ';
  WeatherSeavice(this.dio);

  Future<WeatherModel> getCurrentWeather({required String cityName}) async {
    try {
      Response response = await dio
          .get('$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=1');

      WeatherModel weatherModel = WeatherModel.fromJson(response.data);
      print(weatherModel);

      return weatherModel;
    } on DioException catch (e) {
      final String errMessage =
          e.response?.data['error']['message'] ?? ' oops there was an error';
      throw Exception(errMessage);
    } catch (e) {
      e.toString();
      throw Exception('opppps the was error');
    }
  }
}


// on DioException catch (e) {
//       final String errMessage =
//           e.response?.data['error']['message'] ?? ' oops there was an error';

//       throw Exception(errMessage);
//     } catch (e) {
//       log(e.toString());
//       throw Exception(' oops there was an error');
//     }