import 'package:flutter/material.dart';
import 'package:league_track/constants.dart';
import 'package:league_track/screens/add_match_view.dart';

class CustomAddButton extends StatelessWidget {
  const CustomAddButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 45,right: 10),
      child: FloatingActionButton(
          backgroundColor: kPrimaryColor,
          onPressed: () {
            Navigator.pushNamed(context, AddMatchView.id);
          },
          child: const Icon(Icons.add, color: Colors.white),
        ),
    );
  }
}