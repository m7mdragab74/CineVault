import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class ApiService {
  final String baseUrl = "https://imdb-top-100-movies.p.rapidapi.com/";
  final String apiKey = dotenv.env['RAPIDAPI_KEY'] ?? "";
  final String apiHost = dotenv.env['RAPIDAPI_HOST'] ?? "";
  final Dio _dio;

  ApiService(this._dio);

  Future<List<dynamic>> fetchMovies() async {
    Response response = await _dio.get(
      baseUrl,
      options: Options(
        headers: {
          "x-rapidapi-key": apiKey,
          "x-rapidapi-host": apiHost,
        },
      ),
    );
    return response.data;
  }
}
