import 'package:flutter/material.dart';
import 'package:league_track/screens/add_match_view.dart';
import 'package:league_track/screens/standings_view.dart';

void main() {
  runApp(const LeagueTrack());
}

class LeagueTrack extends StatelessWidget {
  const LeagueTrack({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        AddMatchView.id:(context)=>AddMatchView(),
        StandingsView.id:(context)=>StandingsView()
      },
      initialRoute: StandingsView.id,
      debugShowCheckedModeBanner: false,
    );
  }
}
