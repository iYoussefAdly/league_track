import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:league_track/constants.dart';
import 'package:league_track/models/team_model.dart';
import 'package:league_track/screens/add_match_view.dart';
import 'package:league_track/screens/standings_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(TeamModelAdapter());
  await Hive.openBox<TeamModel>(kTeamBox);
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
