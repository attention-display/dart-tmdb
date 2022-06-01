part of tmdb;

/// About the authentication's Api
class Authentication {
  final TmdbApi _tmdb;
  final _title = "authentication";

  Authentication(this._tmdb);

  /// Create a new guest session for the user.
  ///
  /// Returns:
  ///   A Future<Map<String, dynamic>>
  Future<Map<String, dynamic>> createGuestSession() {
    return _tmdb._query("/$_title/guest_session/new", {});
  }

  /// It creates a new session for the user to rate a movie
  ///
  /// Returns:
  ///   A Future<Map<String, dynamic>>
  Future<Map<String, dynamic>> createRequestSession() {
    return _tmdb._query("/$_title/token/new", {});
  }

  /// > Create a new session for the user
  ///
  /// Args:
  ///   reqToken (String): The request token you got from the first step.
  ///
  /// Returns:
  ///   A Future<Map<String, dynamic>>
  Future<Map<String, dynamic>> createSession(String reqToken) {
    var body = {"request_token": reqToken};
    return _tmdb._query("/$_title/session/new", {}, method: 'POST', body: body);
  }

  /// This function will create a session with a user's login and password.
  ///
  /// Args:
  ///   user (String): The username of the user.
  ///   passwd (String): The user's password.
  ///   reqToken (String): The request token you got from the first step.
  ///
  /// Returns:
  ///   A Future<Map<String, dynamic>>
  Future<Map<String, dynamic>> createSessionWithLogin(String user, String passwd, String reqToken) {
    var body = {"username": "", "password": "", "request_token": ""};
    return _tmdb._query("/$_title/token/validate_with_login", {}, method: 'POST');
  }

  /// "Convert a TMDb v4 access token to a session ID."
  ///
  /// The first thing you'll notice is that the function returns a `Future<Map<String, dynamic>>`. This
  /// is because the function is asynchronous. The `Future` object is a Dart object that represents a
  /// value that will be available in the future. The `Map<String, dynamic>` is a Dart object that
  /// represents a map of keys to values. The `dynamic` type is a Dart type that represents any type
  ///
  /// Args:
  ///   accessToken (String): The access token returned from the OAuth 2.0 token exchange.
  ///
  /// Returns:
  ///   A Future<Map<String, dynamic>>
  Future<Map<String, dynamic>> createSessionFromV4(String accessToken) {
    var body = {"access_token": accessToken};
    return _tmdb._query("/$_title/session/convert/4", {}, method: 'POST', body: body);
  }

  /// Delete a session ID.
  ///
  /// Args:
  ///   sessionId (String): The session ID of the user's session.
  ///
  /// Returns:
  ///   A Future<Map<String, dynamic>>
  Future<Map<String, dynamic>> deleteSession(String sessionId) {
    var body = {"session_id": sessionId};
    return _tmdb._query("/$_title/session", {}, method: 'DELETE', body: body.toString());
  }
}
