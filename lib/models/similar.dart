import 'dart:convert';

class Similar {
  final String id;
  final String title;
  final String image;
  final String imDbRating;
  Similar({
    required this.id,
    required this.title,
    required this.image,
    required this.imDbRating,
  });

  Similar copyWith({
    String? id,
    String? title,
    String? image,
    String? imDbRating,
  }) {
    return Similar(
      id: id ?? this.id,
      title: title ?? this.title,
      image: image ?? this.image,
      imDbRating: imDbRating ?? this.imDbRating,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
      'image': image,
      'imDbRating': imDbRating,
    };
  }

  factory Similar.fromMap(Map<String, dynamic> map) {
    return Similar(
      id: map['id'] as String,
      title: map['title'] as String,
      image: map['image'] as String,
      imDbRating: map['imDbRating'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Similar.fromJson(String source) => Similar.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Similar(id: $id, title: $title, image: $image, imDbRating: $imDbRating)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Similar &&
      other.id == id &&
      other.title == title &&
      other.image == image &&
      other.imDbRating == imDbRating;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      title.hashCode ^
      image.hashCode ^
      imDbRating.hashCode;
  }
}