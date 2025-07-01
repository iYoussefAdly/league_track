import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:league_track/constants.dart';
import 'package:league_track/cubits/cubit/standings_cubit.dart';
import 'package:league_track/models/team_model.dart';
import 'package:league_track/screens/add_match_view.dart';
import 'package:league_track/screens/standings_view.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(TeamModelAdapter());
 await Hive.openBox<TeamModel>(kTeamBox); 

  runApp(const LeagueTrack());
}

class LeagueTrack extends StatelessWidget {
  const LeagueTrack({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => StandingsCubit(),
      child: MaterialApp(
        routes: {
          AddMatchView.id: (context) => const AddMatchView(),
          StandingsView.id: (context) => const StandingsView(),
        },
        initialRoute: StandingsView.id,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
