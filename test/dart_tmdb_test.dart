import 'package:test/test.dart';
import 'package:tmdb/tmdb.dart';

void main() {
  group('A group of tests', () {
    TmdbApi tmdb = new TmdbApi("apiKey");

    setUp(() {
      // Additional setup goes here.
    });

    test('getDetails', () {
      expect(tmdb.movies.getDetails(550), throwsA("Invalid API key: You must be granted a valid key."));
    });
  });
}
