part of tmdb;

/// About the film's Api
class Movies {
  final TmdbApi _tmdb;

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
    return _tmdb._query("/movie/$movieId", {});
  }
}
