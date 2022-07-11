import 'dart:convert';

import 'package:collection/collection.dart';

import 'actor_list.dart';
import 'box_office.dart';
import 'company_list.dart';
import 'country_list.dart';
import 'director_list.dart';
import 'genre_list.dart';
import 'language_list.dart';
import 'similar.dart';
import 'star_list.dart';
import 'writer_list.dart';

class MoviePage {
  final String id;
  final String title;
  final String originalTitle;
  final String fullTitle;
  final String type;
  final String year;
  final String image;
  final String releaseDate;
  final String runtimeMins;
  final String runtimeStr;
  final String plot;
  final String plotLocal;
  final bool plotLocalIsRtl;
  final String awards;
  final String directors;
  final List<DirectorList> directorList;
  final String writers;
  final List<WriterList> writerList;
  final String stars;
  final List<StarList> starList;
  final List<ActorList> actorList;
  final String genres;
  final List<GenreList> genreList;
  final String companies;
  final List<CompanyList> companyList;
  final String countries;
  final List<CountryList> countryList;
  final String languages;
  final List<LanguageList> languageList;
  final String contentRating;
  final String imDbRating;
  final String imDbRatingVotes;
  final String metacriticRating;
  final BoxOffice boxOffice;
  final String keywords;
  final List<String> keywordList;
  final List<Similar> similars;
  MoviePage({
    required this.id,
    required this.title,
    required this.originalTitle,
    required this.fullTitle,
    required this.type,
    required this.year,
    required this.image,
    required this.releaseDate,
    required this.runtimeMins,
    required this.runtimeStr,
    required this.plot,
    required this.plotLocal,
    required this.plotLocalIsRtl,
    required this.awards,
    required this.directors,
    required this.directorList,
    required this.writers,
    required this.writerList,
    required this.stars,
    required this.starList,
    required this.actorList,
    required this.genres,
    required this.genreList,
    required this.companies,
    required this.companyList,
    required this.countries,
    required this.countryList,
    required this.languages,
    required this.languageList,
    required this.contentRating,
    required this.imDbRating,
    required this.imDbRatingVotes,
    required this.metacriticRating,
    required this.boxOffice,
    required this.keywords,
    required this.keywordList,
    required this.similars,
  });

  MoviePage copyWith({
    String? id,
    String? title,
    String? originalTitle,
    String? fullTitle,
    String? type,
    String? year,
    String? image,
    String? releaseDate,
    String? runtimeMins,
    String? runtimeStr,
    String? plot,
    String? plotLocal,
    bool? plotLocalIsRtl,
    String? awards,
    String? directors,
    List<DirectorList>? directorList,
    String? writers,
    List<WriterList>? writerList,
    String? stars,
    List<StarList>? starList,
    List<ActorList>? actorList,
    String? genres,
    List<GenreList>? genreList,
    String? companies,
    List<CompanyList>? companyList,
    String? countries,
    List<CountryList>? countryList,
    String? languages,
    List<LanguageList>? languageList,
    String? contentRating,
    String? imDbRating,
    String? imDbRatingVotes,
    String? metacriticRating,
    BoxOffice? boxOffice,
    String? keywords,
    List<String>? keywordList,
    List<Similar>? similars,
  }) {
    return MoviePage(
      id: id ?? this.id,
      title: title ?? this.title,
      originalTitle: originalTitle ?? this.originalTitle,
      fullTitle: fullTitle ?? this.fullTitle,
      type: type ?? this.type,
      year: year ?? this.year,
      image: image ?? this.image,
      releaseDate: releaseDate ?? this.releaseDate,
      runtimeMins: runtimeMins ?? this.runtimeMins,
      runtimeStr: runtimeStr ?? this.runtimeStr,
      plot: plot ?? this.plot,
      plotLocal: plotLocal ?? this.plotLocal,
      plotLocalIsRtl: plotLocalIsRtl ?? this.plotLocalIsRtl,
      awards: awards ?? this.awards,
      directors: directors ?? this.directors,
      directorList: directorList ?? this.directorList,
      writers: writers ?? this.writers,
      writerList: writerList ?? this.writerList,
      stars: stars ?? this.stars,
      starList: starList ?? this.starList,
      actorList: actorList ?? this.actorList,
      genres: genres ?? this.genres,
      genreList: genreList ?? this.genreList,
      companies: companies ?? this.companies,
      companyList: companyList ?? this.companyList,
      countries: countries ?? this.countries,
      countryList: countryList ?? this.countryList,
      languages: languages ?? this.languages,
      languageList: languageList ?? this.languageList,
      contentRating: contentRating ?? this.contentRating,
      imDbRating: imDbRating ?? this.imDbRating,
      imDbRatingVotes: imDbRatingVotes ?? this.imDbRatingVotes,
      metacriticRating: metacriticRating ?? this.metacriticRating,
      boxOffice: boxOffice ?? this.boxOffice,
      keywords: keywords ?? this.keywords,
      keywordList: keywordList ?? this.keywordList,
      similars: similars ?? this.similars,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
      'originalTitle': originalTitle,
      'fullTitle': fullTitle,
      'type': type,
      'year': year,
      'image': image,
      'releaseDate': releaseDate,
      'runtimeMins': runtimeMins,
      'runtimeStr': runtimeStr,
      'plot': plot,
      'plotLocal': plotLocal,
      'plotLocalIsRtl': plotLocalIsRtl,
      'awards': awards,
      'directors': directors,
      'directorList': directorList.map((x) => x.toMap()).toList(),
      'writers': writers,
      'writerList': writerList.map((x) => x.toMap()).toList(),
      'stars': stars,
      'starList': starList.map((x) => x.toMap()).toList(),
      'actorList': actorList.map((x) => x.toMap()).toList(),
      'genres': genres,
      'genreList': genreList.map((x) => x.toMap()).toList(),
      'companies': companies,
      'companyList': companyList.map((x) => x.toMap()).toList(),
      'countries': countries,
      'countryList': countryList.map((x) => x.toMap()).toList(),
      'languages': languages,
      'languageList': languageList.map((x) => x.toMap()).toList(),
      'contentRating': contentRating,
      'imDbRating': imDbRating,
      'imDbRatingVotes': imDbRatingVotes,
      'metacriticRating': metacriticRating,
      'boxOffice': boxOffice.toMap(),
      'keywords': keywords,
      'keywordList': keywordList,
      'similars': similars.map((x) => x.toMap()).toList(),
    };
  }

  factory MoviePage.fromMap(Map<String, dynamic> map) {
    return MoviePage(
      id: map['id'] as String,
      title: map['title'] as String,
      originalTitle: map['originalTitle'] as String,
      fullTitle: map['fullTitle'] as String,
      type: map['type'] as String,
      year: map['year'] as String,
      image: map['image'] as String,
      releaseDate: map['releaseDate'] as String,
      runtimeMins: map['runtimeMins'] as String,
      runtimeStr: map['runtimeStr'] as String,
      plot: map['plot'] as String,
      plotLocal: map['plotLocal'] as String,
      plotLocalIsRtl: map['plotLocalIsRtl'] as bool,
      awards: map['awards'] as String,
      directors: map['directors'] as String,
      directorList: List<DirectorList>.from((map['directorList'] as List<int>).map<DirectorList>((x) => DirectorList.fromMap(x as Map<String,dynamic>),),),
      writers: map['writers'] as String,
      writerList: List<WriterList>.from((map['writerList'] as List<int>).map<WriterList>((x) => WriterList.fromMap(x as Map<String,dynamic>),),),
      stars: map['stars'] as String,
      starList: List<StarList>.from((map['starList'] as List<int>).map<StarList>((x) => StarList.fromMap(x as Map<String,dynamic>),),),
      actorList: List<ActorList>.from((map['actorList'] as List<int>).map<ActorList>((x) => ActorList.fromMap(x as Map<String,dynamic>),),),
      genres: map['genres'] as String,
      genreList: List<GenreList>.from((map['genreList'] as List<int>).map<GenreList>((x) => GenreList.fromMap(x as Map<String,dynamic>),),),
      companies: map['companies'] as String,
      companyList: List<CompanyList>.from((map['companyList'] as List<int>).map<CompanyList>((x) => CompanyList.fromMap(x as Map<String,dynamic>),),),
      countries: map['countries'] as String,
      countryList: List<CountryList>.from((map['countryList'] as List<int>).map<CountryList>((x) => CountryList.fromMap(x as Map<String,dynamic>),),),
      languages: map['languages'] as String,
      languageList: List<LanguageList>.from((map['languageList'] as List<int>).map<LanguageList>((x) => LanguageList.fromMap(x as Map<String,dynamic>),),),
      contentRating: map['contentRating'] as String,
      imDbRating: map['imDbRating'] as String,
      imDbRatingVotes: map['imDbRatingVotes'] as String,
      metacriticRating: map['metacriticRating'] as String,
      boxOffice: BoxOffice.fromMap(map['boxOffice'] as Map<String,dynamic>),
      keywords: map['keywords'] as String,
      keywordList: List<String>.from((map['keywordList'] as List<String>),),
      similars: List<Similar>.from((map['similars'] as List<int>).map<Similar>((x) => Similar.fromMap(x as Map<String,dynamic>),),),
    );
  }

  String toJson() => json.encode(toMap());

  factory MoviePage.fromJson(String source) => MoviePage.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'MoviePage(id: $id, title: $title, originalTitle: $originalTitle, fullTitle: $fullTitle, type: $type, year: $year, image: $image, releaseDate: $releaseDate, runtimeMins: $runtimeMins, runtimeStr: $runtimeStr, plot: $plot, plotLocal: $plotLocal, plotLocalIsRtl: $plotLocalIsRtl, awards: $awards, directors: $directors, directorList: $directorList, writers: $writers, writerList: $writerList, stars: $stars, starList: $starList, actorList: $actorList, genres: $genres, genreList: $genreList, companies: $companies, companyList: $companyList, countries: $countries, countryList: $countryList, languages: $languages, languageList: $languageList, contentRating: $contentRating, imDbRating: $imDbRating, imDbRatingVotes: $imDbRatingVotes, metacriticRating: $metacriticRating, boxOffice: $boxOffice, keywords: $keywords, keywordList: $keywordList, similars: $similars)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;
  
    return other is MoviePage &&
      other.id == id &&
      other.title == title &&
      other.originalTitle == originalTitle &&
      other.fullTitle == fullTitle &&
      other.type == type &&
      other.year == year &&
      other.image == image &&
      other.releaseDate == releaseDate &&
      other.runtimeMins == runtimeMins &&
      other.runtimeStr == runtimeStr &&
      other.plot == plot &&
      other.plotLocal == plotLocal &&
      other.plotLocalIsRtl == plotLocalIsRtl &&
      other.awards == awards &&
      other.directors == directors &&
      listEquals(other.directorList, directorList) &&
      other.writers == writers &&
      listEquals(other.writerList, writerList) &&
      other.stars == stars &&
      listEquals(other.starList, starList) &&
      listEquals(other.actorList, actorList) &&
      other.genres == genres &&
      listEquals(other.genreList, genreList) &&
      other.companies == companies &&
      listEquals(other.companyList, companyList) &&
      other.countries == countries &&
      listEquals(other.countryList, countryList) &&
      other.languages == languages &&
      listEquals(other.languageList, languageList) &&
      other.contentRating == contentRating &&
      other.imDbRating == imDbRating &&
      other.imDbRatingVotes == imDbRatingVotes &&
      other.metacriticRating == metacriticRating &&
      other.boxOffice == boxOffice &&
      other.keywords == keywords &&
      listEquals(other.keywordList, keywordList) &&
      listEquals(other.similars, similars);
  }

  @override
  int get hashCode {
    return id.hashCode ^
      title.hashCode ^
      originalTitle.hashCode ^
      fullTitle.hashCode ^
      type.hashCode ^
      year.hashCode ^
      image.hashCode ^
      releaseDate.hashCode ^
      runtimeMins.hashCode ^
      runtimeStr.hashCode ^
      plot.hashCode ^
      plotLocal.hashCode ^
      plotLocalIsRtl.hashCode ^
      awards.hashCode ^
      directors.hashCode ^
      directorList.hashCode ^
      writers.hashCode ^
      writerList.hashCode ^
      stars.hashCode ^
      starList.hashCode ^
      actorList.hashCode ^
      genres.hashCode ^
      genreList.hashCode ^
      companies.hashCode ^
      companyList.hashCode ^
      countries.hashCode ^
      countryList.hashCode ^
      languages.hashCode ^
      languageList.hashCode ^
      contentRating.hashCode ^
      imDbRating.hashCode ^
      imDbRatingVotes.hashCode ^
      metacriticRating.hashCode ^
      boxOffice.hashCode ^
      keywords.hashCode ^
      keywordList.hashCode ^
      similars.hashCode;
  }
}