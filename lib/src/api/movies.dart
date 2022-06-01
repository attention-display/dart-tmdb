part of tmdb;

/// About the film's Api
class Movies {
  final TmdbApi _tmdb;
  final _title = "movie";

  Movies(this._tmdb);

  // Get the primary information about a movie.
  /// > It returns a Future that will eventually contain a Map of String keys to dynamic values
  ///
  /// Args:
  ///   movieId (int): The id of the movie you want to get details for.
  ///
  /// Returns:
  ///   A Future<Map<String, dynamic>>
  Future<Map<String, dynamic>> getDetails(int movieId) {
    return _tmdb._query("/$_title/$movieId", {});
  }

  // Get a list of the current popular movies on TMDB. This list updates daily.
  /// It returns a Future object that contains a Map of String and dynamic.
  ///
  /// Args:
  ///   page (int): The page of results to return. Defaults to 1
  ///
  /// Returns:
  ///   A Future<Map<String, dynamic>>
  Future<Map<String, dynamic>> getPopular({int page = 1}) {
    return _tmdb._query("/$_title/popular", {"page": page});
  }
}
