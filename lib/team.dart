import 'package:json_annotation/json_annotation.dart';

part 'team.g.dart';

@JsonSerializable()
class Team {
  Team({
    required this.id,
    required this.name,
    required this.country,
    this.founded,
    required this.national,
    required this.logo,
  });
  late final int id;
  late final String name;
  late final String country;
  late final int? founded;
  late final bool national;
  late final String? logo;

  factory Team.fromJson(Map<String, dynamic> json) => _$TeamFromJson(json);

  Map<String, dynamic> toJson() => _$TeamToJson(this);
}
