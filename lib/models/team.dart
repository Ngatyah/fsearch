class TeamInfo {
  TeamInfo({
    required this.team,
    required this.venue,
  });
  late final Team team;
  late final Venue venue;

  TeamInfo.fromJson(Map<String, dynamic> json) {
    team = Team.fromJson(json['team']);
    venue = Venue.fromJson(json['venue']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['team'] = team.toJson();
    _data['venue'] = venue.toJson();
    return _data;
  }
}

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
  late final String logo;

  Team.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    country = json['country'];
    founded = null;
    national = json['national'];
    logo = json['logo'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['name'] = name;
    _data['country'] = country;
    _data['founded'] = founded;
    _data['national'] = national;
    _data['logo'] = logo;
    return _data;
  }
}

class Venue {
  Venue({
    this.id,
    this.name,
    this.address,
    this.city,
    this.capacity,
    this.surface,
    this.image,
  });
  late final int? id;
  late final String? name;
  late final String? address;
  late final String? city;
  late final int? capacity;
  late final String? surface;
  late final String? image;

  Venue.fromJson(Map<String, dynamic> json) {
    id = null;
    name = null;
    address = null;
    city = null;
    capacity = null;
    surface = null;
    image = null;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['name'] = name;
    _data['address'] = address;
    _data['city'] = city;
    _data['capacity'] = capacity;
    _data['surface'] = surface;
    _data['image'] = image;
    return _data;
  }
}
