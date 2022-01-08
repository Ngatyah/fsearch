import 'package:json_annotation/json_annotation.dart';

part 'soccer_match.g.dart';

@JsonSerializable(explicitToJson: true)
class SoccerMatch {
  SoccerMatch({
    required this.fixture,
    required this.league,
    required this.teams,
    required this.goals,
    required this.score,
  });
  late final Fixture fixture;
  late final League league;
  late final Teams teams;
  late final Goals goals;
  late final Score score;

  factory SoccerMatch.fromJson(Map<String, dynamic> json) =>
      _$SoccerMatchFromJson(json);

  Map<String, dynamic> toJson() => _$SoccerMatchToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Fixture {
  Fixture({
    required this.id,
    this.referee,
    required this.timezone,
    required this.date,
    required this.timestamp,
    required this.periods,
    required this.venue,
    required this.status,
  });
  late final int id;
  late final String? referee;
  late final String timezone;
  late final String date;
  late final int timestamp;
  late final Periods periods;
  late final Venue venue;
  late final Status status;

  factory Fixture.fromJson(Map<String, dynamic> json) =>
      _$FixtureFromJson(json);

  Map<String, dynamic> toJson() => _$FixtureToJson(this);
}

@JsonSerializable()
class Periods {
  Periods({
    this.first,
    this.second,
  });
  late final int? first;
  late final int? second;

  factory Periods.fromJson(Map<String, dynamic> json) =>
      _$PeriodsFromJson(json);

  Map<String, dynamic> toJson() => _$PeriodsToJson(this);
}

@JsonSerializable()
class Venue {
  Venue({
    this.id,
    this.name,
    this.city,
  });
  late final int? id;
  late final String? name;
  late final String? city;

  factory Venue.fromJson(Map<String, dynamic> json) => _$VenueFromJson(json);

  Map<String, dynamic> toJson() => _$VenueToJson(this);
}

@JsonSerializable()
class Status {
  Status({
    required this.long,
    required this.short,
    this.elapsed,
  });
  late final String long;
  late final String short;
  late final int? elapsed;

  factory Status.fromJson(Map<String, dynamic> json) => _$StatusFromJson(json);

  Map<String, dynamic> toJson() => _$StatusToJson(this);
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
    required this.round,
  });
  late final int id;
  late final String name;
  late final String country;
  late final String? logo;
  late final String? flag;
  late final int? season;
  late final String? round;

  factory League.fromJson(Map<String, dynamic> json) => _$LeagueFromJson(json);

  Map<String, dynamic> toJson() => _$LeagueToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Teams {
  Teams({
    required this.home,
    required this.away,
  });
  late final Home home;
  late final Away away;

  factory Teams.fromJson(Map<String, dynamic> json) => _$TeamsFromJson(json);

  Map<String, dynamic> toJson() => _$TeamsToJson(this);
}

@JsonSerializable()
class Home {
  Home({
    required this.id,
    required this.name,
    required this.logo,
    this.winner,
  });
  late final int id;
  late final String name;
  late final String logo;
  late final bool? winner;

  factory Home.fromJson(Map<String, dynamic> json) => _$HomeFromJson(json);

  Map<String, dynamic> toJson() => _$HomeToJson(this);
}

@JsonSerializable()
class Away {
  Away({
    required this.id,
    required this.name,
    required this.logo,
    this.winner,
  });
  late final int id;
  late final String name;
  late final String logo;
  late final bool? winner;

  factory Away.fromJson(Map<String, dynamic> json) => _$AwayFromJson(json);

  Map<String, dynamic> toJson() => _$AwayToJson(this);
}

@JsonSerializable()
class Goals {
  Goals({
    this.home,
    this.away,
  });
  late final int? home;
  late final int? away;

  factory Goals.fromJson(Map<String, dynamic> json) => _$GoalsFromJson(json);

  Map<String, dynamic> toJson() => _$GoalsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Score {
  Score({
    required this.halftime,
    required this.fulltime,
    required this.extratime,
    required this.penalty,
  });
  late final Halftime halftime;
  late final Fulltime fulltime;
  late final Extratime extratime;
  late final Penalty penalty;

  factory Score.fromJson(Map<String, dynamic> json) => _$ScoreFromJson(json);
  Map<String, dynamic> toJson() => _$ScoreToJson(this);
}

@JsonSerializable()
class Halftime {
  Halftime({
    this.home,
    this.away,
  });
  late final int? home;
  late final int? away;

  factory Halftime.fromJson(Map<String, dynamic> json) =>
      _$HalftimeFromJson(json);

  Map<String, dynamic> toJson() => _$HalftimeToJson(this);
}

@JsonSerializable()
class Fulltime {
  Fulltime({
    this.home,
    this.away,
  });
  late final int? home;
  late final int? away;

  factory Fulltime.fromJson(Map<String, dynamic> json) =>
      _$FulltimeFromJson(json);

  Map<String, dynamic> toJson() => _$FulltimeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Extratime {
  Extratime({
    this.home,
    this.away,
  });
  late final home;
  late final away;

  factory Extratime.fromJson(Map<String, dynamic> json) =>
      _$ExtratimeFromJson(json);

  Map<String, dynamic> toJson() => _$ExtratimeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Penalty {
  Penalty({
    this.home,
    this.away,
  });
  late final home;
  late final away;

  factory Penalty.fromJson(Map<String, dynamic> json) =>
      _$PenaltyFromJson(json);

  Map<String, dynamic> toJson() => _$PenaltyToJson(this);
}
