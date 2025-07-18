import 'package:flutter/material.dart';

class CustomTitle extends StatelessWidget {
  const CustomTitle({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
    title ,
      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
    );
  }
}
