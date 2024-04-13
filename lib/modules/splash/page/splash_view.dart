import 'dart:async';

import 'package:eslamy_app/layout/layout_view.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  static const String routeName = "/";
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, LayoutView.routeName);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size mediaQuary = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Image.asset("assets/images/splash.png",
          height: mediaQuary.height,
          width: mediaQuary.width,
          fit: BoxFit.cover),
    );
  }
}
