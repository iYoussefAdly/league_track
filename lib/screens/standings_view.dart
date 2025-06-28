import 'package:flutter/material.dart';
import 'package:league_track/widgets/custom_add_Button.dart';
import 'package:league_track/widgets/custom_app_bar.dart';
import 'package:league_track/widgets/standings_view_body.dart';

class StandingsView extends StatelessWidget {
  const StandingsView({super.key});
  static String id = "StandingsView";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:CustomAppBar(), 
      body: StandingsViewBody(),
      floatingActionButton: CustomAddButton()
    );
  }
}
