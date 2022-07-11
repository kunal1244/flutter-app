import 'dart:convert';

class LanguageList {
  final String key;
  final String value;
  LanguageList({
    required this.key,
    required this.value,
  });

  LanguageList copyWith({
    String? key,
    String? value,
  }) {
    return LanguageList(
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

  factory LanguageList.fromMap(Map<String, dynamic> map) {
    return LanguageList(
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory LanguageList.fromJson(String source) => LanguageList.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'LanguageList(key: $key, value: $value)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is LanguageList &&
      other.key == key &&
      other.value == value;
  }

  @override
  int get hashCode => key.hashCode ^ value.hashCode;
}