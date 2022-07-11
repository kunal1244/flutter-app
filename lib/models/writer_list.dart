import 'dart:convert';

class WriterList {
  final String id;
  final String name;
  WriterList({
    required this.id,
    required this.name,
  });

  WriterList copyWith({
    String? id,
    String? name,
  }) {
    return WriterList(
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

  factory WriterList.fromMap(Map<String, dynamic> map) {
    return WriterList(
      id: map['id'] as String,
      name: map['name'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory WriterList.fromJson(String source) => WriterList.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'WriterList(id: $id, name: $name)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is WriterList &&
      other.id == id &&
      other.name == name;
  }

  @override
  int get hashCode => id.hashCode ^ name.hashCode;
}