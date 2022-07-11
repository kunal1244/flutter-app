import 'dart:convert';

class CountryList {
  final String key;
  final String value;
  CountryList({
    required this.key,
    required this.value,
  });

  CountryList copyWith({
    String? key,
    String? value,
  }) {
    return CountryList(
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

  factory CountryList.fromMap(Map<String, dynamic> map) {
    return CountryList(
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory CountryList.fromJson(String source) => CountryList.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'CountryList(key: $key, value: $value)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is CountryList &&
      other.key == key &&
      other.value == value;
  }

  @override
  int get hashCode => key.hashCode ^ value.hashCode;
}