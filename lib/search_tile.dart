import 'package:flutter/material.dart';

import 'package:fsearch/team.dart';

class SearchTile extends StatelessWidget {
  const SearchTile({
    Key? key,
    required this.team,
  }) : super(key: key);
  final Team team;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.network(
        team.logo!,
        fit: BoxFit.cover,
        width: 30,
        height: 30,
      ),
      title: Text(
        team.name,
      ),
      subtitle: Text(team.country),
    );
  }
}
