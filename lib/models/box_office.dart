import 'dart:convert';

class BoxOffice {
  final String budget;
  final String openingWeekendUSA;
  final String grossUSA;
  final String cumulativeWorldwideGross;
  BoxOffice({
    required this.budget,
    required this.openingWeekendUSA,
    required this.grossUSA,
    required this.cumulativeWorldwideGross,
  });

  BoxOffice copyWith({
    String? budget,
    String? openingWeekendUSA,
    String? grossUSA,
    String? cumulativeWorldwideGross,
  }) {
    return BoxOffice(
      budget: budget ?? this.budget,
      openingWeekendUSA: openingWeekendUSA ?? this.openingWeekendUSA,
      grossUSA: grossUSA ?? this.grossUSA,
      cumulativeWorldwideGross: cumulativeWorldwideGross ?? this.cumulativeWorldwideGross,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'budget': budget,
      'openingWeekendUSA': openingWeekendUSA,
      'grossUSA': grossUSA,
      'cumulativeWorldwideGross': cumulativeWorldwideGross,
    };
  }

  factory BoxOffice.fromMap(Map<String, dynamic> map) {
    return BoxOffice(
      budget: map['budget'] as String,
      openingWeekendUSA: map['openingWeekendUSA'] as String,
      grossUSA: map['grossUSA'] as String,
      cumulativeWorldwideGross: map['cumulativeWorldwideGross'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory BoxOffice.fromJson(String source) => BoxOffice.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'BoxOffice(budget: $budget, openingWeekendUSA: $openingWeekendUSA, grossUSA: $grossUSA, cumulativeWorldwideGross: $cumulativeWorldwideGross)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is BoxOffice &&
      other.budget == budget &&
      other.openingWeekendUSA == openingWeekendUSA &&
      other.grossUSA == grossUSA &&
      other.cumulativeWorldwideGross == cumulativeWorldwideGross;
  }

  @override
  int get hashCode {
    return budget.hashCode ^
      openingWeekendUSA.hashCode ^
      grossUSA.hashCode ^
      cumulativeWorldwideGross.hashCode;
  }
}