import 'package:dio/dio.dart';
import 'package:weather_app/data/model/weather_model.dart';
import 'package:weather_app/data/service/api/api_constants.dart';

class WeatherService {
  final dio;
  WeatherService(this.dio);

  Future<WeatherModel> getWeather({required String cityName}) async {
    try {
      Response response = await dio.get(
        '${ApiConstants.baseUrl}${ApiConstants.endPoint}?key=${ApiConstants.apiKey}&q=$cityName&days=1',
      );

      WeatherModel weatherModel = WeatherModel.fromJson(response.data);
      return weatherModel;
    } on DioException catch (e) {
      final String massageError =
          e.response?.data["error"]["massage"] ?? "try later";
      throw Exception(massageError);
    } catch (e) {
      throw Exception("ops try later");
    }
  }
}
