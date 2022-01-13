import 'package:fsearch/models/soccer_match.dart';

import 'odds.dart';

class BetInfo {
  late final SoccerMatch soccer;
  late final Bets? bets;
  BetInfo({
    required this.soccer,
    required this.bets,
  });
}
