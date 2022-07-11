import 'dart:convert';

class StarList {
  final String id;
  final String name;
  StarList({
    required this.id,
    required this.name,
  });

  StarList copyWith({
    String? id,
    String? name,
  }) {
    return StarList(
      id: id ?? this.id,
      name: name ?? this.name,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
    };
  }

  factory StarList.fromMap(Map<String, dynamic> map) {
    return StarList(
      id: map['id'] as String,
      name: map['name'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory StarList.fromJson(String source) => StarList.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'StarList(id: $id, name: $name)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is StarList &&
      other.id == id &&
      other.name == name;
  }

  @override
  int get hashCode => id.hashCode ^ name.hashCode;
}