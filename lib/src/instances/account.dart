import 'dart:ffi';

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
  List<AccountCreatedListsResults>? results;
  int? totalPages;
  int? totalResults;

  AccountCreatedLists(
      {this.page, this.results, this.totalPages, this.totalResults});

  AccountCreatedLists.fromJson(Map<String, dynamic> json) {
    page = json['page'];
    if (json['results'] != null) {
      results = <AccountCreatedListsResults>[];
      json['results'].forEach((v) {
        results!.add(new AccountCreatedListsResults.fromJson(v));
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

class AccountCreatedListsResults {
  String? description;
  int? favoriteCount;
  int? id;
  int? itemCount;
  String? iso6391;
  String? listType;
  String? name;
  String? posterPath;

  AccountCreatedListsResults(
      {this.description,
      this.favoriteCount,
      this.id,
      this.itemCount,
      this.iso6391,
      this.listType,
      this.name,
      this.posterPath});

  AccountCreatedListsResults.fromJson(Map<String, dynamic> json) {
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

class AccountFavoriteMovies {
  int? page;
  List<AccountFavoriteMoviesResults>? results;
  int? totalPages;
  int? totalResults;

  AccountFavoriteMovies(
      {this.page, this.results, this.totalPages, this.totalResults});

  AccountFavoriteMovies.fromJson(Map<String, dynamic> json) {
    page = json['page'];
    if (json['results'] != null) {
      results = <AccountFavoriteMoviesResults>[];
      json['results'].forEach((v) {
        results!.add(new AccountFavoriteMoviesResults.fromJson(v));
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

class AccountFavoriteMoviesResults {
  bool? adult;
  String? backdropPath;
  List<int>? genreIds;
  int? id;
  String? originalLanguage;
  String? originalTitle;
  String? overview;
  String? releaseDate;
  String? posterPath;
  int? popularity;
  String? title;
  bool? video;
  int? voteAverage;
  int? voteCount;

  AccountFavoriteMoviesResults(
      {this.adult,
      this.backdropPath,
      this.genreIds,
      this.id,
      this.originalLanguage,
      this.originalTitle,
      this.overview,
      this.releaseDate,
      this.posterPath,
      this.popularity,
      this.title,
      this.video,
      this.voteAverage,
      this.voteCount});

  AccountFavoriteMoviesResults.fromJson(Map<String, dynamic> json) {
    adult = json['adult'];
    backdropPath = json['backdrop_path'];
    if (json['genre_ids'] != null) {
      genreIds = <int>[];
      json['genre_ids'].forEach((v) {
        genreIds!.add(v);
      });
    }
    id = json['id'];
    originalLanguage = json['original_language'];
    originalTitle = json['original_title'];
    overview = json['overview'];
    releaseDate = json['release_date'];
    posterPath = json['poster_path'];
    popularity = json['popularity'];
    title = json['title'];
    video = json['video'];
    voteAverage = json['vote_average'];
    voteCount = json['vote_count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['adult'] = this.adult;
    data['backdrop_path'] = this.backdropPath;
    if (this.genreIds != null) {
      data['genre_ids'] = this.genreIds!.map((v) => v).toList();
    }
    data['id'] = this.id;
    data['original_language'] = this.originalLanguage;
    data['original_title'] = this.originalTitle;
    data['overview'] = this.overview;
    data['release_date'] = this.releaseDate;
    data['poster_path'] = this.posterPath;
    data['popularity'] = this.popularity;
    data['title'] = this.title;
    data['video'] = this.video;
    data['vote_average'] = this.voteAverage;
    data['vote_count'] = this.voteCount;
    return data;
  }
}

class AccountFavoriteTVShows {
  int? page;
  List<AccountFavoriteTVShowsResults>? results;
  int? totalPages;
  int? totalResults;

  AccountFavoriteTVShows(
      {this.page, this.results, this.totalPages, this.totalResults});

  AccountFavoriteTVShows.fromJson(Map<String, dynamic> json) {
    page = json['page'];
    if (json['results'] != null) {
      results = <AccountFavoriteTVShowsResults>[];
      json['results'].forEach((v) {
        results!.add(new AccountFavoriteTVShowsResults.fromJson(v));
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

class AccountFavoriteTVShowsResults {
  String? backdropPath;
  String? firstAirDate;
  List<int>? genreIds;
  int? id;
  String? originalLanguage;
  String? originalName;
  String? overview;
  List<String>? originCountry;
  String? posterPath;
  int? popularity;
  String? name;
  int? voteAverage;
  int? voteCount;

  AccountFavoriteTVShowsResults(
      {this.backdropPath,
      this.firstAirDate,
      this.genreIds,
      this.id,
      this.originalLanguage,
      this.originalName,
      this.overview,
      this.originCountry,
      this.posterPath,
      this.popularity,
      this.name,
      this.voteAverage,
      this.voteCount});

  AccountFavoriteTVShowsResults.fromJson(Map<String, dynamic> json) {
    backdropPath = json['backdrop_path'];
    firstAirDate = json['first_air_date'];
    genreIds = json['genre_ids'].cast<int>();
    id = json['id'];
    originalLanguage = json['original_language'];
    originalName = json['original_name'];
    overview = json['overview'];
    originCountry = json['origin_country'].cast<String>();
    posterPath = json['poster_path'];
    popularity = json['popularity'];
    name = json['name'];
    voteAverage = json['vote_average'];
    voteCount = json['vote_count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['backdrop_path'] = this.backdropPath;
    data['first_air_date'] = this.firstAirDate;
    data['genre_ids'] = this.genreIds;
    data['id'] = this.id;
    data['original_language'] = this.originalLanguage;
    data['original_name'] = this.originalName;
    data['overview'] = this.overview;
    data['origin_country'] = this.originCountry;
    data['poster_path'] = this.posterPath;
    data['popularity'] = this.popularity;
    data['name'] = this.name;
    data['vote_average'] = this.voteAverage;
    data['vote_count'] = this.voteCount;
    return data;
  }
}

class AccountRatedMovies {
  int? page;
  List<AccountFavoriteMoviesResults>? results;
  int? totalPages;
  int? totalResults;

  AccountRatedMovies(
      {this.page, this.results, this.totalPages, this.totalResults});

  AccountRatedMovies.fromJson(Map<String, dynamic> json) {
    page = json['page'];
    if (json['results'] != null) {
      results = <AccountFavoriteMoviesResults>[];
      json['results'].forEach((v) {
        results!.add(new AccountFavoriteMoviesResults.fromJson(v));
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

class AccountRatedTVShows {
  int? page;
  List<AccountFavoriteTVShowsResults>? results;
  int? totalPages;
  int? totalResults;

  AccountRatedTVShows(
      {this.page, this.results, this.totalPages, this.totalResults});

  AccountRatedTVShows.fromJson(Map<String, dynamic> json) {
    page = json['page'];
    if (json['results'] != null) {
      results = <AccountFavoriteTVShowsResults>[];
      json['results'].forEach((v) {
        results!.add(new AccountFavoriteTVShowsResults.fromJson(v));
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

class AccountRatedTVEpisodes {
  int? page;
  List<AccountRatedTVEpisodesResults>? results;
  int? totalPages;
  int? totalResults;

  AccountRatedTVEpisodes(
      {this.page, this.results, this.totalPages, this.totalResults});

  AccountRatedTVEpisodes.fromJson(Map<String, dynamic> json) {
    page = json['page'];
    if (json['results'] != null) {
      results = <AccountRatedTVEpisodesResults>[];
      json['results'].forEach((v) {
        results!.add(new AccountRatedTVEpisodesResults.fromJson(v));
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

class AccountRatedTVEpisodesResults {
  String? airDate;
  int? episodeNumber;
  int? id;
  String? name;
  String? overview;
  String? productionCode;
  int? seasonNumber;
  int? showId;
  String? stillPath;
  int? voteAverage;
  int? voteCount;
  int? rating;

  AccountRatedTVEpisodesResults(
      {this.airDate,
      this.episodeNumber,
      this.id,
      this.name,
      this.overview,
      this.productionCode,
      this.seasonNumber,
      this.showId,
      this.stillPath,
      this.voteAverage,
      this.voteCount,
      this.rating});

  AccountRatedTVEpisodesResults.fromJson(Map<String, dynamic> json) {
    airDate = json['air_date'];
    episodeNumber = json['episode_number'];
    id = json['id'];
    name = json['name'];
    overview = json['overview'];
    productionCode = json['production_code'];
    seasonNumber = json['season_number'];
    showId = json['show_id'];
    stillPath = json['still_path'];
    voteAverage = json['vote_average'];
    voteCount = json['vote_count'];
    rating = json['rating'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['air_date'] = this.airDate;
    data['episode_number'] = this.episodeNumber;
    data['id'] = this.id;
    data['name'] = this.name;
    data['overview'] = this.overview;
    data['production_code'] = this.productionCode;
    data['season_number'] = this.seasonNumber;
    data['show_id'] = this.showId;
    data['still_path'] = this.stillPath;
    data['vote_average'] = this.voteAverage;
    data['vote_count'] = this.voteCount;
    data['rating'] = this.rating;
    return data;
  }
}
