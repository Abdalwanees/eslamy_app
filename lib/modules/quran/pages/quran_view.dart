import 'package:eslamy_app/modules/quran/pages/quran_details_view.dart';
import 'package:eslamy_app/modules/quran/widget/sura_title_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Quranview extends StatelessWidget {
  final List<String> suraname = [
    "الفَاتِحَة",
    "البَقَرَة",
    "آل عِمرَان",
    "النِّسَاء",
    "المَائدة",
    "الأنعَام",
    "الأعرَاف",
    "الأنفَال",
    "التوبَة",
    "يُونس",
    "هُود",
    "يُوسُف",
    "الرَّعْد",
    "إبراهِيم",
    "الحِجْر",
    "النَّحْل",
    "الإسْرَاء",
    "الكهْف",
    "مَريَم",
    "طه",
    "الأنبيَاء",
    "الحَج",
    "المُؤمنون",
    "النُّور",
    "الفُرْقان",
    "الشُّعَرَاء",
    "النَّمْل",
    "القَصَص",
    "العَنكبوت",
    "الرُّوم",
    "لقمَان",
    "السَّجدَة",
    "الأحزَاب",
    "سَبَأ",
    "فَاطِر",
    "يس",
    "الصَّافات",
    "ص",
    "الزُّمَر",
    "غَافِر",
    "فُصِّلَتْ",
    "الشُّورَى",
    "الزُّخْرُف",
    "الدخَان",
    "الجَاثيَة",
    "الأحْقاف",
    "محَمَّد",
    "الفَتْح",
    "الحُجرَات",
    "ق",
    "الذَّاريَات",
    "الطُّور",
    "النَّجْم",
    "القَمَر",
    "الرَّحمن",
    "الوَاقِعَة",
    "الحَديد",
    "المجَادلة",
    "الحَشر",
    "المُمتَحنَة",
    "الصَّف",
    "الجُمُعَة",
    "المنَافِقون",
    "التغَابُن",
    "الطلَاق",
    "التحْريم",
    "المُلْك",
    "القَلَم",
    "الحَاقَّة",
    "المعَارج",
    "نُوح",
    "الجِن",
    "المُزَّمِّل",
    "المُدَّثِّر",
    "القِيَامَة",
    "الإنسَان",
    "المُرسَلات",
    "النَّبَأ",
    "النّازعَات",
    "عَبَس",
    "التَّكوير",
    "الانفِطار",
    "المطفِّفِين",
    "الانْشِقَاق",
    "البرُوج",
    "الطَّارِق",
    "الأَعْلى",
    "الغَاشِية",
    "الفَجْر",
    "البَلَد",
    "الشَّمْس",
    "الليْل",
    "الضُّحَى",
    "الشَّرْح",
    "التِّين",
    "العَلَق",
    "القَدْر",
    "البَينَة",
    "الزلزَلة",
    "العَادِيات",
    "القَارِعة",
    "التَّكَاثر",
    "العَصْر",
    "الهُمَزَة",
    "الفِيل",
    "قُرَيْش",
    "المَاعُون",
    "الكَوْثَر",
    "الكَافِرُون",
    "النَّصر",
    "المَسَد",
    "الإخْلَاص",
    "الفَلَق",
    "النَّاس"
  ];
  Quranview({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuary = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    return Column(
      children: [
        Image.asset(
          "assets/images/Quran_header.png",
          height: mediaQuary.height * .2,
        ),
        Divider(
          thickness: 1,
          color: theme.primaryColor,
        ),
        Row(
          children: [
            Expanded(
              child: Text(
                "رقم السورة",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: "ElMessiri",
                    fontSize: 25,
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
                "اسم السورة",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: "ElMessiri",
                    fontSize: 25,
                    fontWeight: FontWeight.w500),
              ),
            )
          ],
        ),
        Divider(
          thickness: 1,
          color: theme.primaryColor,
        ),
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, QuranDetailsview.routeName,
                      arguments:
                          SuraDetails(suraname[index], (index + 1).toString()));
                },
                child: SuraTitleWidget(
                  suraname: suraname[index],
                  Suranum: (index + 1).toString(),
                )),
            itemCount: suraname.length,
          ),
        )
      ],
    );
  }
}

class SuraDetails {
  final String suraName;
  final String suraNum;
  SuraDetails(this.suraName, this.suraNum);
}
