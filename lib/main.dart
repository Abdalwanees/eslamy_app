import 'package:eslamy_app/config/application_theme_manger.dart';
import 'package:eslamy_app/layout/layout_view.dart';
import 'package:eslamy_app/modules/quran/pages/quran_details_view.dart';
import 'package:eslamy_app/modules/splash/page/splash_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Eslamy App',
      debugShowCheckedModeBanner: false,
      theme: ApplicationThemeMangre.lightTheme,
      initialRoute: SplashView.routeName,
      routes: {
        SplashView.routeName: (context) => const SplashView(),
        LayoutView.routeName: (context) => const LayoutView(),
        QuranDetailsview.routeName: (context) => QuranDetailsview()
      },
    );
  }
}
