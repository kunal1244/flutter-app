import 'dart:convert';

class DirectorList {
  final String id;
  final String name;
  DirectorList({
    required this.id,
    required this.name,
  });

  DirectorList copyWith({
    String? id,
    String? name,
  }) {
    return DirectorList(
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

  factory DirectorList.fromMap(Map<String, dynamic> map) {
    return DirectorList(
      id: map['id'] as String,
      name: map['name'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory DirectorList.fromJson(String source) => DirectorList.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'DirectorList(id: $id, name: $name)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is DirectorList &&
      other.id == id &&
      other.name == name;
  }

  @override
  int get hashCode => id.hashCode ^ name.hashCode;
}