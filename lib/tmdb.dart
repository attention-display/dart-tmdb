library tmdb;

import 'package:dio/dio.dart';
part 'src/api/movies.dart';

/// It's a class that contains a private method that makes a request to the TMDb API and returns a
/// Future of a Map of dynamic values
class TmdbApi {
  final String _apiPath = "https://api.themoviedb.org/3";
  late String _apiKey;
  late String _language;
  late Dio _dio;

  late Movies _movies;

  /// The constructor of the class.
  /// @param {String} apiKey - The API key you got from TMDb.
  /// @param {String} [lan=en-US] - The language of the response.
  TmdbApi(String apiKey, {String lan = "en-US"}) {
    _apiKey = apiKey;
    _language = lan;

    _dio = Dio();
  }

  /// A getter method. It is used to get the value of the private variable `_movies`.
  Movies get movies => _movies;

  /// A setter method. It is used to set the value of the private variable `_language`.
  set language(String lan) {
    _language = lan;
  }

  /// A public http request method
  /// It takes a path, a map of parameters, and a method (defaults to GET) and returns a Future of a Map
  /// of dynamic values
  ///
  /// Args:
  ///   path (String): The path to the API endpoint.
  ///   params (Map<String, dynamic>): The parameters to be sent to the API.
  ///   method (String): The HTTP method to use. Defaults to GET. Defaults to GET
  ///
  /// Returns:
  ///   A Future<Map<String, dynamic>>
  Future<Map<String, dynamic>> _query(String path, Map<String, dynamic> params, {String method = 'GET'}) async {
    String uri = _apiPath + path;
    params["api_key"] = _apiKey;
    params["language"] = _language;
    Response response;
    try {
      response = await _dio.request(uri, queryParameters: params, options: Options(method: method));
      return response.data;
    } on DioError catch (e) {
      return _formatError(e);
    }
  }

  /// Formatting the returned error message
  /// If the error is a response error, return the error message from the response. Otherwise, return an
  /// unknown error
  ///
  /// Args:
  ///   e (DioError): The error object that was thrown by the Dio client.
  ///
  /// Returns:
  ///   A Future object that contains a Map<String, dynamic>
  Future<Map<String, dynamic>> _formatError(DioError e) {
    if (e.response?.data != null) {
      return Future.error(e.response?.data["status_message"]);
    } else {
      print(e);
      return Future.error("unknown");
    }
  }
}
