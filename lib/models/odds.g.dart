// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'odds.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Odds _$OddsFromJson(Map<String, dynamic> json) => Odds(
      league: League.fromJson(json['league'] as Map<String, dynamic>),
      fixture: Fixture.fromJson(json['fixture'] as Map<String, dynamic>),
      update: json['update'] as String,
      bookmakers: (json['bookmakers'] as List<dynamic>)
          .map((e) => Bookmakers.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$OddsToJson(Odds instance) => <String, dynamic>{
      'league': instance.league.toJson(),
      'fixture': instance.fixture.toJson(),
      'update': instance.update,
      'bookmakers': instance.bookmakers.map((e) => e.toJson()).toList(),
    };

League _$LeagueFromJson(Map<String, dynamic> json) => League(
      id: json['id'] as int,
      name: json['name'] as String,
      country: json['country'] as String,
      logo: json['logo'] as String,
      flag: json['flag'] as String,
      season: json['season'] as int,
    );

Map<String, dynamic> _$LeagueToJson(League instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'country': instance.country,
      'logo': instance.logo,
      'flag': instance.flag,
      'season': instance.season,
    };

Fixture _$FixtureFromJson(Map<String, dynamic> json) => Fixture(
      id: json['id'] as int,
      timezone: json['timezone'] as String,
      date: json['date'] as String,
      timestamp: json['timestamp'] as int,
    );

Map<String, dynamic> _$FixtureToJson(Fixture instance) => <String, dynamic>{
      'id': instance.id,
      'timezone': instance.timezone,
      'date': instance.date,
      'timestamp': instance.timestamp,
    };

Bookmakers _$BookmakersFromJson(Map<String, dynamic> json) => Bookmakers(
      id: json['id'] as int,
      name: json['name'] as String,
      bets: (json['bets'] as List<dynamic>)
          .map((e) => Bets.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$BookmakersToJson(Bookmakers instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'bets': instance.bets.map((e) => e.toJson()).toList(),
    };

Bets _$BetsFromJson(Map<String, dynamic> json) => Bets(
      id: json['id'] as int,
      name: json['name'] as String,
      values: (json['values'] as List<dynamic>)
          .map((e) => Values.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$BetsToJson(Bets instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'values': instance.values.map((e) => e.toJson()).toList(),
    };

Values _$ValuesFromJson(Map<String, dynamic> json) => Values(
      value: json['value'] as String?,
      odd: json['odd'] as String,
    );

Map<String, dynamic> _$ValuesToJson(Values instance) => <String, dynamic>{
      'value': instance.value,
      'odd': instance.odd,
    };
