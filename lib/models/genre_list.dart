import 'dart:convert';

class GenreList {
  final String key;
  final String value;
  GenreList({
    required this.key,
    required this.value,
  });

  GenreList copyWith({
    String? key,
    String? value,
  }) {
    return GenreList(
      key: key ?? this.key,
      value: value ?? this.value,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory GenreList.fromMap(Map<String, dynamic> map) {
    return GenreList(
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory GenreList.fromJson(String source) => GenreList.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'GenreList(key: $key, value: $value)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is GenreList &&
      other.key == key &&
      other.value == value;
  }

  @override
  int get hashCode => key.hashCode ^ value.hashCode;
}