import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:league_track/constants.dart';

class TeamInfoItem extends StatelessWidget {
  const TeamInfoItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 71,
        child: Card(
          elevation: 2,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Icon(FontAwesomeIcons.peopleGroup, color: kPrimaryColor),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text('Team Name', style: TextStyle(fontSize: 20)),
              ),
              Spacer(flex: 1),
              Text('24', style: TextStyle(fontSize: 20)),
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Text(' pts', style: TextStyle(color: Color(0xffB2ABB5))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
