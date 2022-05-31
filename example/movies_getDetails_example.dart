import 'package:tmdb/tmdb.dart';

void main() {
  TmdbApi api = new TmdbApi("apiKey");
  var details = api.movies.getDetails(550);
  details.then((info) {
    print(info);
  }).catchError((error) {
    print(error);
  });
}
