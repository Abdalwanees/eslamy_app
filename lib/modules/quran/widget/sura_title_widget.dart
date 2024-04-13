import 'package:flutter/material.dart';

class SuraTitleWidget extends StatelessWidget {
  final String suraname;
  final String Suranum;
  const SuraTitleWidget(
      {super.key, required this.suraname, required this.Suranum});

  @override
  Widget build(BuildContext context) {
    var mediaQuary = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    return Row(
      children: [
        Expanded(
          child: Text(
            Suranum,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontFamily: "ElMessiri",
                fontSize: 20,
                fontWeight: FontWeight.w500),
          ),
        ),
        Container(
          width: 1,
          height: 35,
          color: theme.primaryColor,
        ),
        Expanded(
          child: Text(
            suraname,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontFamily: "ElMessiri",
                fontSize: 20,
                fontWeight: FontWeight.w500),
          ),
        )
      ],
    );
  }
}
