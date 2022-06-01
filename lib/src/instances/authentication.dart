/// A class that is used to parse the json data from the API.
class CreateRequestToken {
  bool? success;
  String? expiresAt;
  String? requestToken;

  CreateRequestToken({this.success, this.expiresAt, this.requestToken});

  CreateRequestToken.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    expiresAt = json['expires_at'];
    requestToken = json['request_token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    data['expires_at'] = this.expiresAt;
    data['request_token'] = this.requestToken;
    return data;
  }
}

/// A class that is used to parse the json data from the API.
class CreateSessionWithLogin extends CreateRequestToken {}

/// A class that is used to parse the json data from the API.
class CreateGuestSession {
  bool? success;
  String? expiresAt;
  String? guestSessionId;

  CreateGuestSession({this.success, this.expiresAt, this.guestSessionId});

  CreateGuestSession.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    expiresAt = json['expires_at'];
    guestSessionId = json['guest_session_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    data['expires_at'] = this.expiresAt;
    data['guest_session_id'] = this.guestSessionId;
    return data;
  }
}

/// A class that is used to parse the json data from the API.
class CreateSession {
  bool? success;
  String? sessionId;

  CreateSession({this.success, this.sessionId});

  CreateSession.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    sessionId = json['session_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    data['session_id'] = this.sessionId;
    return data;
  }
}

/// A class that is used to parse the json data from the API.
class CreateSessionFromV4 extends CreateSession {}

/// A class that is used to parse the json data from the API.
class DeleteSession {
  bool? success;

  DeleteSession({this.success});

  DeleteSession.fromJson(Map<String, dynamic> json) {
    success = json['success'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    return data;
  }
}
