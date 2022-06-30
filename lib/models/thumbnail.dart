import 'dart:convert';

class ThumbnailModel {
  static List<Item>? items;
}

class Item {
  final String id;
  final String rank;
  final String rankUpDown;
  final String title;
  final String fullTitle;
  final String year;
  final String image;
  final String crew;
  final String imDbRating;
  final String imDbRatingCount;
  Item({
    required this.id,
    required this.rank,
    required this.rankUpDown,
    required this.title,
    required this.fullTitle,
    required this.year,
    required this.image,
    required this.crew,
    required this.imDbRating,
    required this.imDbRatingCount,
  });

  Item copyWith({
    String? id,
    String? rank,
    String? rankUpDown,
    String? title,
    String? fullTitle,
    String? year,
    String? image,
    String? crew,
    String? imDbRating,
    String? imDbRatingCount,
  }) {
    return Item(
      id: id ?? this.id,
      rank: rank ?? this.rank,
      rankUpDown: rankUpDown ?? this.rankUpDown,
      title: title ?? this.title,
      fullTitle: fullTitle ?? this.fullTitle,
      year: year ?? this.year,
      image: image ?? this.image,
      crew: crew ?? this.crew,
      imDbRating: imDbRating ?? this.imDbRating,
      imDbRatingCount: imDbRatingCount ?? this.imDbRatingCount,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'rank': rank,
      'rankUpDown': rankUpDown,
      'title': title,
      'fullTitle': fullTitle,
      'year': year,
      'image': image,
      'crew': crew,
      'imDbRating': imDbRating,
      'imDbRatingCount': imDbRatingCount,
    };
  }

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      id: map['id'] as String,
      rank: map['rank'] as String,
      rankUpDown: map['rankUpDown'] as String,
      title: map['title'] as String,
      fullTitle: map['fullTitle'] as String,
      year: map['year'] as String,
      image: map['image'] as String,
      crew: map['crew'] as String,
      imDbRating: map['imDbRating'] as String,
      imDbRatingCount: map['imDbRatingCount'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Item.fromJson(String source) =>
      Item.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Item(id: $id, rank: $rank, rankUpDown: $rankUpDown, title: $title, fullTitle: $fullTitle, year: $year, image: $image, crew: $crew, imDbRating: $imDbRating, imDbRatingCount: $imDbRatingCount)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Item &&
        other.id == id &&
        other.rank == rank &&
        other.rankUpDown == rankUpDown &&
        other.title == title &&
        other.fullTitle == fullTitle &&
        other.year == year &&
        other.image == image &&
        other.crew == crew &&
        other.imDbRating == imDbRating &&
        other.imDbRatingCount == imDbRatingCount;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        rank.hashCode ^
        rankUpDown.hashCode ^
        title.hashCode ^
        fullTitle.hashCode ^
        year.hashCode ^
        image.hashCode ^
        crew.hashCode ^
        imDbRating.hashCode ^
        imDbRatingCount.hashCode;
  }
}
