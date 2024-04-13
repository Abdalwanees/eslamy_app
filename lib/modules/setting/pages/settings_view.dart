import 'package:flutter/material.dart';

class Settingsview extends StatelessWidget {
  const Settingsview({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Settings View",
        style: TextStyle(
            fontFamily: "ElMessiri", fontSize: 40, fontWeight: FontWeight.bold),
      ),
    );
  }
}
