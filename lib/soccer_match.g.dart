// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'soccer_match.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SoccerMatch _$SoccerMatchFromJson(Map<String, dynamic> json) => SoccerMatch(
      fixture: Fixture.fromJson(json['fixture'] as Map<String, dynamic>),
      league: League.fromJson(json['league'] as Map<String, dynamic>),
      teams: Teams.fromJson(json['teams'] as Map<String, dynamic>),
      goals: Goals.fromJson(json['goals'] as Map<String, dynamic>),
      score: Score.fromJson(json['score'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SoccerMatchToJson(SoccerMatch instance) =>
    <String, dynamic>{
      'fixture': instance.fixture.toJson(),
      'league': instance.league.toJson(),
      'teams': instance.teams.toJson(),
      'goals': instance.goals.toJson(),
      'score': instance.score.toJson(),
    };

Fixture _$FixtureFromJson(Map<String, dynamic> json) => Fixture(
      id: json['id'] as int,
      referee: json['referee'] as String?,
      timezone: json['timezone'] as String,
      date: json['date'] as String,
      timestamp: json['timestamp'] as int,
      periods: Periods.fromJson(json['periods'] as Map<String, dynamic>),
      venue: Venue.fromJson(json['venue'] as Map<String, dynamic>),
      status: Status.fromJson(json['status'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FixtureToJson(Fixture instance) => <String, dynamic>{
      'id': instance.id,
      'referee': instance.referee,
      'timezone': instance.timezone,
      'date': instance.date,
      'timestamp': instance.timestamp,
      'periods': instance.periods.toJson(),
      'venue': instance.venue.toJson(),
      'status': instance.status.toJson(),
    };

Periods _$PeriodsFromJson(Map<String, dynamic> json) => Periods(
      first: json['first'] as int?,
      second: json['second'] as int?,
    );

Map<String, dynamic> _$PeriodsToJson(Periods instance) => <String, dynamic>{
      'first': instance.first,
      'second': instance.second,
    };

Venue _$VenueFromJson(Map<String, dynamic> json) => Venue(
      id: json['id'] as int?,
      name: json['name'] as String?,
      city: json['city'] as String?,
    );

Map<String, dynamic> _$VenueToJson(Venue instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'city': instance.city,
    };

Status _$StatusFromJson(Map<String, dynamic> json) => Status(
      long: json['long'] as String,
      short: json['short'] as String,
      elapsed: json['elapsed'] as int?,
    );

Map<String, dynamic> _$StatusToJson(Status instance) => <String, dynamic>{
      'long': instance.long,
      'short': instance.short,
      'elapsed': instance.elapsed,
    };

League _$LeagueFromJson(Map<String, dynamic> json) => League(
      id: json['id'] as int,
      name: json['name'] as String,
      country: json['country'] as String,
      logo: json['logo'] as String?,
      flag: json['flag'] as String?,
      season: json['season'] as int?,
      round: json['round'] as String?,
    );

Map<String, dynamic> _$LeagueToJson(League instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'country': instance.country,
      'logo': instance.logo,
      'flag': instance.flag,
      'season': instance.season,
      'round': instance.round,
    };

Teams _$TeamsFromJson(Map<String, dynamic> json) => Teams(
      home: Home.fromJson(json['home'] as Map<String, dynamic>),
      away: Away.fromJson(json['away'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TeamsToJson(Teams instance) => <String, dynamic>{
      'home': instance.home.toJson(),
      'away': instance.away.toJson(),
    };

Home _$HomeFromJson(Map<String, dynamic> json) => Home(
      id: json['id'] as int,
      name: json['name'] as String,
      logo: json['logo'] as String,
      winner: json['winner'] as bool?,
    );

Map<String, dynamic> _$HomeToJson(Home instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'logo': instance.logo,
      'winner': instance.winner,
    };

Away _$AwayFromJson(Map<String, dynamic> json) => Away(
      id: json['id'] as int,
      name: json['name'] as String,
      logo: json['logo'] as String,
      winner: json['winner'] as bool?,
    );

Map<String, dynamic> _$AwayToJson(Away instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'logo': instance.logo,
      'winner': instance.winner,
    };

Goals _$GoalsFromJson(Map<String, dynamic> json) => Goals(
      home: json['home'] as int?,
      away: json['away'] as int?,
    );

Map<String, dynamic> _$GoalsToJson(Goals instance) => <String, dynamic>{
      'home': instance.home,
      'away': instance.away,
    };

Score _$ScoreFromJson(Map<String, dynamic> json) => Score(
      halftime: Halftime.fromJson(json['halftime'] as Map<String, dynamic>),
      fulltime: Fulltime.fromJson(json['fulltime'] as Map<String, dynamic>),
      extratime: Extratime.fromJson(json['extratime'] as Map<String, dynamic>),
      penalty: Penalty.fromJson(json['penalty'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ScoreToJson(Score instance) => <String, dynamic>{
      'halftime': instance.halftime.toJson(),
      'fulltime': instance.fulltime.toJson(),
      'extratime': instance.extratime.toJson(),
      'penalty': instance.penalty.toJson(),
    };

Halftime _$HalftimeFromJson(Map<String, dynamic> json) => Halftime(
      home: json['home'] as int?,
      away: json['away'] as int?,
    );

Map<String, dynamic> _$HalftimeToJson(Halftime instance) => <String, dynamic>{
      'home': instance.home,
      'away': instance.away,
    };

Fulltime _$FulltimeFromJson(Map<String, dynamic> json) => Fulltime(
      home: json['home'] as int?,
      away: json['away'] as int?,
    );

Map<String, dynamic> _$FulltimeToJson(Fulltime instance) => <String, dynamic>{
      'home': instance.home,
      'away': instance.away,
    };

Extratime _$ExtratimeFromJson(Map<String, dynamic> json) => Extratime(
      home: json['home'],
      away: json['away'],
    );

Map<String, dynamic> _$ExtratimeToJson(Extratime instance) => <String, dynamic>{
      'home': instance.home,
      'away': instance.away,
    };

Penalty _$PenaltyFromJson(Map<String, dynamic> json) => Penalty(
      home: json['home'],
      away: json['away'],
    );

Map<String, dynamic> _$PenaltyToJson(Penalty instance) => <String, dynamic>{
      'home': instance.home,
      'away': instance.away,
    };
