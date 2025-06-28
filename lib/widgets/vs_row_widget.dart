import 'package:flutter/material.dart';

class VsRowWidget extends StatelessWidget {
  const VsRowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Icon(Icons.sports_soccer, color: Colors.grey, size: 30),
        SizedBox(width: 15),
        Text('VS', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        SizedBox(width: 15),
        Icon(Icons.sports_soccer, color: Colors.grey, size: 30),
      ],
    );
  }
}
