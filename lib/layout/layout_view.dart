import 'package:eslamy_app/modules/hadeth/pages/hadeth_view.dart';
import 'package:eslamy_app/modules/quran/pages/quran_view.dart';
import 'package:eslamy_app/modules/radio/pages/radio_view.dart';
import 'package:eslamy_app/modules/setting/pages/settings_view.dart';
import 'package:eslamy_app/modules/tasbeh/pages/tasbeh_view.dart';
import 'package:flutter/material.dart';

class LayoutView extends StatefulWidget {
  static const String routeName = "layout";

  const LayoutView({super.key});

  @override
  State<LayoutView> createState() => _LayoutViewState();
}

class _LayoutViewState extends State<LayoutView> {
  int currentIndex = 0;
  List<Widget> screens = [
    Quranview(),
    Hadethview(),
    Tasbehview(),
    Radioview(),
    Settingsview(),
  ];

  @override
  Widget build(BuildContext context) {
    // Size mediaQuary = MediaQuery.of(context).size;
    //   return Stack(
    //     children: [
    //       Image.asset(
    //         "assets/images/main_bg.png",
    //         width: mediaQuary.width,
    //         height: mediaQuary.height,
    //         fit: BoxFit.cover,
    //       ),
    //       Scaffold(
    //         // backgroundColor: Colors.transparent,
    //         appBar: AppBar(
    //           title: const Text("اسلامي"),
    //         ),
    //       )
    //     ],
    //   );
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/main_bg.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("اسلامي"),
        ),
        body: screens[currentIndex], //based on index

        bottomNavigationBar: BottomNavigationBar(
          // backgroundColor: Colors.red,
          items: const [
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/quran.png")),
                label: "Quran"),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/hades1x.png")),
                label: "Hades"),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/sebha1x.png")),
                label: "Tasbeh"),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/radio1x.png")),
                label: "Radio"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "settings"),
          ],
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
