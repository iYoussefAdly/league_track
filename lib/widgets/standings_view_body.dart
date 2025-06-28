import 'package:flutter/material.dart';
import 'package:league_track/widgets/custom_title.dart';
import 'package:league_track/widgets/team_info_item.dart';

class StandingsViewBody extends StatelessWidget {
  const StandingsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:15,vertical: 10 ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: CustomTitle(title: "League Standings",),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 4,
              itemBuilder: (context, index) => TeamInfoItem(),
            ),
          )
        ],
      ),
    );
  }
}

