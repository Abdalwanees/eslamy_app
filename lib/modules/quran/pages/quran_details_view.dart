import 'package:eslamy_app/modules/quran/pages/quran_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class QuranDetailsview extends StatefulWidget {
  static const String routeName = "Quran Details";

  const QuranDetailsview({super.key});

  @override
  State<QuranDetailsview> createState() => _QuranDetailsviewState();
}

class _QuranDetailsviewState extends State<QuranDetailsview> {
  List<String> verserList = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetails;

    var mediaQuary = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    if (verserList.isEmpty) loadData(args.suraNum);

    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/main_bg.png"),
              fit: BoxFit.cover)),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("اسلامي"),
        ),
        body: Container(
            width: mediaQuary.width,
            height: mediaQuary.height,
            margin:
                const EdgeInsets.only(right: 20, left: 20, top: 10, bottom: 50),
            padding:
                const EdgeInsets.only(right: 20, left: 20, top: 20, bottom: 20),
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(.7),
                borderRadius: BorderRadius.circular(25)),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "سورة${args.suraName}",
                      style: const TextStyle(
                          fontFamily: "ElMessiri",
                          fontSize: 30,
                          fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Icon(
                      Icons.play_circle_outlined,
                      size: 25,
                    )
                  ],
                ),
                Divider(
                  color: theme.primaryColor,
                ),
                if (verserList.isEmpty)
                  Center(
                    child: CircularProgressIndicator(
                      color: theme.primaryColor,
                    ),
                  ),
                if (verserList.isNotEmpty)
                  Expanded(
                    child: ListView.builder(
                      itemBuilder: (context, index) => Text(
                        "${verserList[index]}",
                        style: const TextStyle(
                            // fontFamily: "ElMessiri",
                            fontSize: 20,
                            fontWeight: FontWeight.normal),
                        textAlign: TextAlign.center,
                      ),
                      itemCount: verserList.length,
                    ),
                  ),
              ],
            )),
      ),
    );
  }

  Future<void> loadData(String suraNum) async {
    String suraContent =
        await rootBundle.loadString("assets/files/$suraNum.txt");
    verserList = suraContent.split("/n");
    setState(() {});
  }
}
