import 'dart:convert';

class CompanyList {
  final String id;
  final String name;
  CompanyList({
    required this.id,
    required this.name,
  });

  CompanyList copyWith({
    String? id,
    String? name,
  }) {
    return CompanyList(
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

  factory CompanyList.fromMap(Map<String, dynamic> map) {
    return CompanyList(
      id: map['id'] as String,
      name: map['name'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory CompanyList.fromJson(String source) => CompanyList.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'CompanyList(id: $id, name: $name)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is CompanyList &&
      other.id == id &&
      other.name == name;
  }

  @override
  int get hashCode => id.hashCode ^ name.hashCode;
}