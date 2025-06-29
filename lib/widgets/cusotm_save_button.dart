import 'package:flutter/material.dart';
import 'package:league_track/constants.dart';

class CusotmSaveButton extends StatelessWidget {
  const CusotmSaveButton({super.key,required this.onTap});
 final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap ,
      child: Container(
        height:50 ,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
         color: kPrimaryColor, 
        ),
        child: Center(child: Text('Save Match Result',style: TextStyle(color: Colors.white),)),
      ),
    );
  }
}