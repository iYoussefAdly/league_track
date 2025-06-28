import 'package:flutter/material.dart';
import 'package:league_track/constants.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});
   @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: false,
      automaticallyImplyLeading: false,
        clipBehavior: Clip.none,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Text(
            'LeagueTrack',
            style: TextStyle(
              color: kPrimaryColor,
              fontFamily: 'Pacifico',
              fontSize: 25,
            ),
          ),
        ),
      );
  }
}