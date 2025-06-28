import 'package:flutter/material.dart';
import 'package:league_track/widgets/add_match_body.dart';
import 'package:league_track/widgets/custom_app_bar.dart';
class AddMatchView extends StatelessWidget {
  const AddMatchView({super.key});
  static String id ='AddMatchView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:CustomAppBar(),
      body: AddMatchBody(),
    );
  }
}