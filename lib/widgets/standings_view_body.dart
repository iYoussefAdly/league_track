import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:league_track/cubits/cubit/standings_cubit.dart';
import 'package:league_track/widgets/custom_title.dart';
import 'package:league_track/widgets/team_info_item.dart';

class StandingsViewBody extends StatelessWidget {
  const StandingsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const CustomTitle(title: "League Standings"),
              IconButton(
                onPressed: () {
                  BlocProvider.of<StandingsCubit>(context).clearAllTeams();
                },
                icon: Icon(Icons.delete, color: Colors.red),
                tooltip: 'Clear all',
              ),
            ],
          ),

          Expanded(
            child: BlocBuilder<StandingsCubit, StandingsState>(
              builder: (context, state) {
                if (state is StandingsLoaded) {
                  final teams = state.teams;
                  return ListView.builder(
                    itemCount: teams.length,
                    itemBuilder: (context, index) {
                      return TeamInfoItem(teamModel: teams[index]);
                    },
                  );
                } else {
                  return const Center(child: Text("No data yet"));
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
