import 'package:flutter/material.dart';
import 'package:league_track/widgets/custom_text_field.dart';
import 'package:league_track/widgets/custom_title.dart';
import 'package:league_track/widgets/match_result_selector.dart';
import 'package:league_track/widgets/vs_row_widget.dart';

enum MatchResult { teamAWon, draw, teamBWon }

class AddMatchBody extends StatefulWidget {
  const AddMatchBody({super.key});

  @override
  State<AddMatchBody> createState() => _AddMatchBodyState();
}

class _AddMatchBodyState extends State<AddMatchBody> {
  MatchResult? result;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
      child: ListView(
        children: [
          const CustomTitle(title: "Add Match Result"),
          const SizedBox(height: 20),

          const Text('Team A'),
          CustomTextField(
            hintText: 'Enter Team A',
            onChanged: (value) {},
          ),
          const SizedBox(height: 30),

          const VsRowWidget(),
          const SizedBox(height: 30),

          const Text('Team B'),
          CustomTextField(
            hintText: 'Enter Team B',
            onChanged: (value) {},
          ),
          const SizedBox(height: 25),

          const Text('Match Result'),
          MatchResultSelector(
            selectedResult: result,
            onChanged: (value) {
              setState(() {
                result = value;
              });
            },
          ),
        ],
      ),
    );
  }
}
