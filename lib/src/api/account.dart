part of tmdb;

class Account {
  final TmdbApi _tmdb;
  final _title = "account";

  Account(this._tmdb);

  /// > This function takes a session id and returns a map of the details of the session
  ///
  /// Args:
  ///   sessionId (String): The session ID of the user's current session.
  ///
  /// Returns:
  ///   A Future<Map<String, dynamic>>
  Future<Map<String, dynamic>> getDetails(String sessionId) {
    return _tmdb._query("/$_title", {"session_id": sessionId});
  }

  /// "Get the lists that the user has created."
  ///
  /// The first parameter is the account id. The second parameter is the session id. The third parameter
  /// is the page number
  ///
  /// Args:
  ///   accountId (int): The account id of the user.
  ///   sessionId (String): The session id of the user.
  ///   page (int): The page of results to return. Defaults to 1
  ///
  /// Returns:
  ///   A Future<Map<String, dynamic>>
  Future<Map<String, dynamic>> getCreatedLists(
    int accountId,
    String sessionId, {
    int page = 1,
  }) {
    return _tmdb._query(
        "/$_title/$accountId/lists", {"session_id": sessionId, "page": page});
  }

  /// A dartdoc comment.
  /// "Get a list of the movies that the user has marked as a favorite."
  ///
  /// The first parameter is the account id. The second parameter is the session id. The third parameter
  /// is the sort order. The fourth parameter is the page number
  ///
  /// Args:
  ///   accountId (int): The account id of the user.
  ///   sessionId (String): The session id of the user.
  ///   sort_by (String): The sort order for the results. Allowed values are: created_at.asc,
  /// created_at.desc, release_date.asc, release_date.desc, title.asc, title.desc, vote_average.asc,
  /// vote_average.desc, vote_count. Defaults to created_at.desc
  ///   page (int): Specify which page to query. Minimum 1, maximum 1000. Defaults to 1
  ///
  /// Returns:
  ///   A Future<Map<String, dynamic>>
  Future<Map<String, dynamic>> getFavoriteMovies(
      int accountId, String sessionId,
      {String sortBy = "created_at.desc", int page = 1}) {
    return _tmdb._query("/$_title/$accountId/favorite/movies",
        {"sort_by": sortBy, "page": page, "session_id": sessionId});
  }

  /// "Get a list of the user's favorite TV shows."
  ///
  /// The first parameter is the account ID. The second parameter is the session ID. The third parameter
  /// is the sort order. The fourth parameter is the page number
  ///
  /// Args:
  ///   accountId (int): The account id of the user.
  ///   sessionId (String): The session id of the user.
  ///   sortBy (String): The sort order of the results. Allowed values are: created_at.asc,
  /// created_at.desc, release_date.asc, release_date.desc, popularity.asc, popularity.desc,
  /// vote_average.asc, vote_average.desc, vote_count. Defaults to created_at.desc
  ///   page (int): Specify which page to query. Minimum 1, maximum 1000. Defaults to 1
  ///
  /// Returns:
  ///   A Future<Map<String, dynamic>>
  Future<Map<String, dynamic>> getFavoriteTvShows(
      int accountId, String sessionId,
      {String sortBy = "created_at.desc", int page = 1}) {
    return _tmdb._query("/$_title/$accountId/favorite/tv",
        {"sort_by": sortBy, "page": page, "session_id": sessionId});
  }

  /// It makes a POST request to the TMDB API to mark a movie or TV show as a favorite
  ///
  /// Args:
  ///   accountId (int): The account id.
  ///   sessionId (String): The session id of the user.
  ///   mediaRType (String): The media type. Can be either movie or tv.
  ///   mediaId (int): The id of the media you want to mark as favorite.
  ///   favorite (bool): A boolean value.
  ///
  /// Returns:
  ///   A map of the response from the server.
  Future<Map<String, dynamic>> makeAsFavorite(int accountId, String sessionId,
      String mediaRType, int mediaId, bool favorite) {
    var body = {
      "media_type": mediaRType,
      "media_id": mediaId,
      "favorite": favorite
    };
    return _tmdb._query(
        "/$_title/$accountId/favorite", {"session_id": sessionId},
        body: body, method: 'POST');
  }

  /// "Get a list of rated movies for an account."
  ///
  /// The first parameter is the account ID. The second parameter is the session ID. The third parameter
  /// is the sort order. The fourth parameter is the page number
  ///
  /// Args:
  ///   accountId (int): The account id of the user.
  ///   sessionId (String): The session id of the user.
  ///   sortBy (String): The sort order to use, for this endpoint the default is created_at.desc.
  /// Defaults to created_at.desc
  ///   page (int): Specify which page to query. Minimum 1, maximum 1000. Defaults to 1
  ///
  /// Returns:
  ///   A Future<Map<String, dynamic>>
  Future<Map<String, dynamic>> getRatedMovies(int accountId, String sessionId,
      {String sortBy = "created_at.desc", int page = 1}) {
    return _tmdb._query("/$_title/$accountId/rated/movies",
        {"sort_by": sortBy, "page": page, "session_id": sessionId});
  }

  /// Get a list of all the TV shows that a particular account has rated
  ///
  /// Args:
  ///   accountId (int): The account id.
  ///   sessionId (String): The session id of the user.
  ///   sortBy (String): The sort order to use, for this endpoint the default is created_at.desc.
  /// Defaults to created_at.desc
  ///   page (int): Specify which page to query. Minimum 1, maximum 1000. Defaults to 1
  ///
  /// Returns:
  ///   A Future<Map<String, dynamic>>
  Future<Map<String, dynamic>> getRatedTvShows(int accountId, String sessionId,
      {String sortBy = "created_at.desc", int page = 1}) {
    return _tmdb._query("/$_title/$accountId/rated/tv",
        {"sort_by": sortBy, "page": page, "session_id": sessionId});
  }

  /// Get the list of rated TV episodes (TV show ratings) for an account
  ///
  /// Args:
  ///   accountId (int): The account id.
  ///   sessionId (String): The session id of the user.
  ///   sortBy (String): The sort order of the results. Allowed values are: created_at.asc,
  /// created_at.desc, release_date.asc, release_date.desc, popularity.asc, popularity.desc,
  /// vote_average.asc, vote_average.desc, vote_count. Defaults to created_at.desc
  ///   page (int): Specify which page to query. Minimum 1, maximum 1000. Defaults to 1
  ///
  /// Returns:
  ///   A Future<Map<String, dynamic>>
  Future<Map<String, dynamic>> getRatedTvEpisodes(
      int accountId, String sessionId,
      {String sortBy = "created_at.desc", int page = 1}) {
    return _tmdb._query("/$_title/$accountId/rated/tv",
        {"sort_by": sortBy, "page": page, "session_id": sessionId});
  }

  /// Get the list of movies on the account's watchlist
  ///
  /// Args:
  ///   accountId (int): The account id of the user.
  ///   sessionId (String): The session id of the user.
  ///   sortBy (String): The sort order to use, for this endpoint the default is created_at.desc.
  /// Defaults to created_at.desc
  ///   page (int): Specify which page to query. Minimum 1, maximum 1000. Defaults to 1
  ///
  /// Returns:
  ///   A Future<Map<String, dynamic>>
  Future<Map<String, dynamic>> getMovieWatchlist(
      int accountId, String sessionId,
      {String sortBy = "created_at.desc", int page = 1}) {
    return _tmdb._query("/$_title/$accountId/watchlist/movies",
        {"sort_by": sortBy, "page": page, "session_id": sessionId});
  }

  /// Get the list of movies on the user's watchlist
  ///
  /// Args:
  ///   accountId (int): The account id.
  ///   sessionId (String): The session id of the user.
  ///   sortBy (String): The sort order of the results. Defaults to created_at.desc
  ///   page (int): Specify which page to query. Minimum 1, maximum 1000. Defaults to 1
  ///
  /// Returns:
  ///   A Future<Map<String, dynamic>>
  Future<Map<String, dynamic>> getTvShowWatchlist(
      int accountId, String sessionId,
      {String sortBy = "created_at.desc", int page = 1}) {
    return _tmdb._query("/$_title/$accountId/watchlist/movies",
        {"sort_by": sortBy, "page": page, "session_id": sessionId});
  }

  /// Add a movie or TV show to the user's watchlist
  ///
  /// Args:
  ///   accountId (int): The account id.
  ///   sessionId (String): The session id of the user.
  ///   mediaRType (String): The media type of the item you want to add to the watchlist. This can be
  /// either "movie" or "tv".
  ///   mediaId (int): The id of the media you want to add to the watchlist.
  ///   watchlist (bool): true or false
  ///
  /// Returns:
  ///   A Future<Map<String, dynamic>>
  Future<Map<String, dynamic>> addToWatchlist(int accountId, String sessionId,
      String mediaRType, int mediaId, bool watchlist) {
    var body = {
      "media_type": mediaRType,
      "media_id": mediaId,
      "watchlist": watchlist
    };
    return _tmdb._query(
        "/$_title/$accountId/watchlist", {"session_id": sessionId},
        body: body, method: 'POST');
  }
}
