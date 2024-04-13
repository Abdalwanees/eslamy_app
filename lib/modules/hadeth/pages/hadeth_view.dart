import 'package:flutter/material.dart';

class Hadethview extends StatelessWidget {
  const Hadethview({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Hadeth View",
        style: TextStyle(
            fontFamily: "ElMessiri", fontSize: 40, fontWeight: FontWeight.bold),
      ),
    );
  }
}
