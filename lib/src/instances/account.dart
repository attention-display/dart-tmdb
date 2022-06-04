class AccountDetails {
  Avatar? avatar;
  int? id;
  String? iso6391;
  String? iso31661;
  String? name;
  bool? includeAdult;
  String? username;

  AccountDetails(
      {this.avatar,
      this.id,
      this.iso6391,
      this.iso31661,
      this.name,
      this.includeAdult,
      this.username});

  AccountDetails.fromJson(Map<String, dynamic> json) {
    avatar =
        json['avatar'] != null ? new Avatar.fromJson(json['avatar']) : null;
    id = json['id'];
    iso6391 = json['iso_639_1'];
    iso31661 = json['iso_3166_1'];
    name = json['name'];
    includeAdult = json['include_adult'];
    username = json['username'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.avatar != null) {
      data['avatar'] = this.avatar!.toJson();
    }
    data['id'] = this.id;
    data['iso_639_1'] = this.iso6391;
    data['iso_3166_1'] = this.iso31661;
    data['name'] = this.name;
    data['include_adult'] = this.includeAdult;
    data['username'] = this.username;
    return data;
  }
}

class Avatar {
  Gravatar? gravatar;

  Avatar({this.gravatar});

  Avatar.fromJson(Map<String, dynamic> json) {
    gravatar = json['gravatar'] != null
        ? new Gravatar.fromJson(json['gravatar'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.gravatar != null) {
      data['gravatar'] = this.gravatar!.toJson();
    }
    return data;
  }
}

class Gravatar {
  String? hash;

  Gravatar({this.hash});

  Gravatar.fromJson(Map<String, dynamic> json) {
    hash = json['hash'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['hash'] = this.hash;
    return data;
  }
}

class AccountCreatedLists {
  int? page;
  List<Results>? results;
  int? totalPages;
  int? totalResults;

  AccountCreatedLists(
      {this.page, this.results, this.totalPages, this.totalResults});

  AccountCreatedLists.fromJson(Map<String, dynamic> json) {
    page = json['page'];
    if (json['results'] != null) {
      results = <Results>[];
      json['results'].forEach((v) {
        results!.add(new Results.fromJson(v));
      });
    }
    totalPages = json['total_pages'];
    totalResults = json['total_results'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['page'] = this.page;
    if (this.results != null) {
      data['results'] = this.results!.map((v) => v.toJson()).toList();
    }
    data['total_pages'] = this.totalPages;
    data['total_results'] = this.totalResults;
    return data;
  }
}

class Results {
  String? description;
  int? favoriteCount;
  int? id;
  int? itemCount;
  String? iso6391;
  String? listType;
  String? name;
  String? posterPath;

  Results(
      {this.description,
      this.favoriteCount,
      this.id,
      this.itemCount,
      this.iso6391,
      this.listType,
      this.name,
      this.posterPath});

  Results.fromJson(Map<String, dynamic> json) {
    description = json['description'];
    favoriteCount = json['favorite_count'];
    id = json['id'];
    itemCount = json['item_count'];
    iso6391 = json['iso_639_1'];
    listType = json['list_type'];
    name = json['name'];
    posterPath = json['poster_path'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['description'] = this.description;
    data['favorite_count'] = this.favoriteCount;
    data['id'] = this.id;
    data['item_count'] = this.itemCount;
    data['iso_639_1'] = this.iso6391;
    data['list_type'] = this.listType;
    data['name'] = this.name;
    data['poster_path'] = this.posterPath;
    return data;
  }
}
