import 'package:json_annotation/json_annotation.dart';
part 'odds.g.dart';

// add odds serialization
@JsonSerializable(explicitToJson: true)
class Odds {
  Odds({
    required this.league,
    required this.fixture,
    required this.update,
    required this.bookmakers,
  });
  late final League league;
  late final Fixture fixture;
  late final String update;
  late final List<Bookmakers> bookmakers;

  factory Odds.fromJson(Map<String, dynamic> json) => _$OddsFromJson(json);

  Map<String, dynamic> toJson() => _$OddsToJson(this);
}

@JsonSerializable()
class League {
  League({
    required this.id,
    required this.name,
    required this.country,
    required this.logo,
    required this.flag,
    required this.season,
  });
  late final int id;
  late final String name;
  late final String country;
  late final String logo;
  late final String flag;
  late final int season;

  factory League.fromJson(Map<String, dynamic> json) => _$LeagueFromJson(json);
  Map<String, dynamic> toJson() => _$LeagueToJson(this);
}

@JsonSerializable()
class Fixture {
  Fixture({
    required this.id,
    required this.timezone,
    required this.date,
    required this.timestamp,
  });
  late final int id;
  late final String timezone;
  late final String date;
  late final int timestamp;

  factory Fixture.fromJson(Map<String, dynamic> json) =>
      _$FixtureFromJson(json);
  Map<String, dynamic> toJson() => _$FixtureToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Bookmakers {
  Bookmakers({
    required this.id,
    required this.name,
    required this.bets,
  });
  late final int id;
  late final String name;
  late final List<Bets> bets;

  factory Bookmakers.fromJson(Map<String, dynamic> json) =>
      _$BookmakersFromJson(json);

  Map<String, dynamic> toJson() => _$BookmakersToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Bets {
  Bets({
    required this.id,
    required this.name,
    required this.values,
  });
  late final int id;
  late final String name;
  late final List<Values> values;

  factory Bets.fromJson(Map<String, dynamic> json) => _$BetsFromJson(json);

  Map<String, dynamic> toJson() => _$BetsToJson(this);
}

@JsonSerializable()
class Values {
  Values({
    required this.value,
    required this.odd,
  });
  late final String? value;
  late final String odd;

  factory Values.fromJson(Map<String, dynamic> json) => _$ValuesFromJson(json);

  Map<String, dynamic> toJson() => _$ValuesToJson(this);
}
