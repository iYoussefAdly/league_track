import 'package:flutter/material.dart';
import 'package:league_track/widgets/custom_text_field.dart';
import 'package:league_track/widgets/custom_title.dart';
import 'package:league_track/widgets/vs_row_widget.dart';
enum MatchResult { teamAWon, draw, teamBWon }
class AddMatchBody extends StatelessWidget {
const AddMatchBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTitle(title: "Add Match Result"),
          SizedBox(height: 20),
          Text('Team A'),
          CustomTextField(hintText: 'enter Team A', onChanged: 
          (value)
          {

          }),
          SizedBox(height: 30),
          VsRowWidget(),
          SizedBox(height: 30),
          Text('Team B'),
          CustomTextField(hintText: 'enter Team B',
           onChanged:
           (value)
           {

           }),
           SizedBox(height: 25,),
           Text('Match Result'),
        ],
      ),
    );
  }
}
