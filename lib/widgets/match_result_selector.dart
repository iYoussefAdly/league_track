import 'package:flutter/material.dart';
import 'package:league_track/models/match_result.dart';
class MatchResultSelector extends StatelessWidget {
  final MatchResult? selectedResult;
  final Function(MatchResult?) onChanged;

  const MatchResultSelector({
    super.key,
    required this.selectedResult,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RadioListTile<MatchResult>(
          title: const Text('Team A Won'),
          value: MatchResult.teamAWon,
          groupValue: selectedResult,
          onChanged: onChanged,
        ),
        RadioListTile<MatchResult>(
          title: const Text('Draw'),
          value: MatchResult.draw,
          groupValue: selectedResult,
          onChanged: onChanged,
        ),
        RadioListTile<MatchResult>(
          title: const Text('Team B Won'),
          value: MatchResult.teamBWon,
          groupValue: selectedResult,
          onChanged: onChanged,
        ),
      ],
    );
  }
}
