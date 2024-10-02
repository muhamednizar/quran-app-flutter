import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quran_app/core/Utils/assets_manager.dart';
import 'package:quran_app/core/Utils/routes_manager.dart';
import 'package:quran_app/core/Utils/strings_manager.dart';
import 'package:quran_app/presentation/Home/tabs/hadith_tab/Widgets/hadith_tab_title.dart';
import 'package:quran_app/presentation/Home/tabs/hadith_tab/Widgets/hadith_title_widget.dart';

class HadithTab extends StatefulWidget {
  HadithTab({super.key});

  @override
  State<HadithTab> createState() => _HadithTabState();
}

class _HadithTabState extends State<HadithTab> {
  List<HadithItem> allHadithList = [];

  @override
  Widget build(BuildContext context) {
    if (allHadithList.isEmpty) readHadithFile();
    return Container(
      child: Column(
        children: [
          Expanded(
              flex: 1,
              child:
                  Center(child: Image.asset(AssetsManager.lightHadeethLogo))),
          HadithTabTitle(),
          Expanded(
            flex: 3,
            child: ListView.separated(
              separatorBuilder: (context, index) => Container(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                color: Theme.of(context).dividerColor,
                height: 2,
              ),
              itemBuilder: (context, index) =>
                  HadithTitleWidget(hadith: allHadithList[index]),
              itemCount: allHadithList.length,
            ),
          )
        ],
      ),
    );
  }

  Future<void> readHadithFile() async {
    String fileContent =
        await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> HadithItemList = fileContent.split('#');
    for (var hadith in HadithItemList) {
      List<String> HadithLines = hadith.trim().split('\n');
      String Title = HadithLines[0];
      HadithLines.removeAt(0);
      String Content = HadithLines.join('\n');
      HadithItem hadithItem = HadithItem(title: Title, Content: Content);
      allHadithList.add(hadithItem);
    }
    setState(() {});
  }
}

class HadithItem {
  String title;
  String Content;

  HadithItem({required this.title, required this.Content});
}
