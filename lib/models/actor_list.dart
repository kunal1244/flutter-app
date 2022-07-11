import 'dart:convert';

class ActorList {
  final String id;
  final String image;
  final String name;
  final String asCharacter;
  ActorList({
    required this.id,
    required this.image,
    required this.name,
    required this.asCharacter,
  });

  ActorList copyWith({
    String? id,
    String? image,
    String? name,
    String? asCharacter,
  }) {
    return ActorList(
      id: id ?? this.id,
      image: image ?? this.image,
      name: name ?? this.name,
      asCharacter: asCharacter ?? this.asCharacter,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'image': image,
      'name': name,
      'asCharacter': asCharacter,
    };
  }

  factory ActorList.fromMap(Map<String, dynamic> map) {
    return ActorList(
      id: map['id'] as String,
      image: map['image'] as String,
      name: map['name'] as String,
      asCharacter: map['asCharacter'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ActorList.fromJson(String source) => ActorList.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ActorList(id: $id, image: $image, name: $name, asCharacter: $asCharacter)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is ActorList &&
      other.id == id &&
      other.image == image &&
      other.name == name &&
      other.asCharacter == asCharacter;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      image.hashCode ^
      name.hashCode ^
      asCharacter.hashCode;
  }
}