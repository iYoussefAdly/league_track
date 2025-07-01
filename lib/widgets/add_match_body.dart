import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:league_track/cubits/cubit/standings_cubit.dart';
import 'package:league_track/models/match_result.dart';
import 'package:league_track/widgets/cusotm_save_button.dart';
import 'package:league_track/widgets/custom_text_field.dart';
import 'package:league_track/widgets/custom_title.dart';
import 'package:league_track/widgets/match_result_selector.dart';
import 'package:league_track/widgets/vs_row_widget.dart';

class AddMatchBody extends StatefulWidget {
  const AddMatchBody({super.key});

  @override
  State<AddMatchBody> createState() => _AddMatchBodyState();
}

class _AddMatchBodyState extends State<AddMatchBody> {
  MatchResult? result;
  String? teamA;
  String? teamB;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
      child: ListView(
        shrinkWrap: true,
        children: [
          const CustomTitle(title: "Add Match Result"),
          const SizedBox(height: 20),

          const Text('Team A'),
          CustomTextField(
            hintText: 'Enter Team A',
            onChanged: (value) {
              teamA = value;
            },
          ),
          const SizedBox(height: 30),

          const VsRowWidget(),
          const SizedBox(height: 30),

          const Text('Team B'),
          CustomTextField(
            hintText: 'Enter Team B',
            onChanged: (value) {
              teamB = value;
            },
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
          const SizedBox(height: 60),

          CusotmSaveButton(
            onTap: () {
              if (teamA != null &&
                  teamB != null &&
                  teamA!.isNotEmpty &&
                  teamB!.isNotEmpty &&
                  result != null) {
                BlocProvider.of<StandingsCubit>(context).addMatchResult(
                  teamA: teamA!,
                  teamB: teamB!,
                  result: result!,
                );

                // Optional: رجّع المستخدم لصفحة الترتيب بعد الإضافة
                Navigator.pop(context);
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Please fill all fields and select result'),
                  ),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
