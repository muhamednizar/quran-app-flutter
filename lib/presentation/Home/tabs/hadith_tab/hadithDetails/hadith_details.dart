import 'package:flutter/material.dart';
import 'package:quran_app/config/theme/my_theme.dart';
import 'package:quran_app/presentation/Home/tabs/hadith_tab/hadith_tab.dart';

import '../../../../../core/Utils/assets_manager.dart';

class HadithDetails extends StatelessWidget {
  const HadithDetails({super.key});

  @override
  Widget build(BuildContext context) {
    HadithItem hadith =
        ModalRoute.of(context)?.settings.arguments as HadithItem;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(MyTheme.isDarkEnabled
                  ? AssetsManager.darkMainBg
                  : AssetsManager.lightMainBg),
              fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          title: Text(hadith.title),
        ),
        body: Card(
          margin: EdgeInsets.symmetric(vertical: 100, horizontal: 20),
          child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(20),
              child: SingleChildScrollView(
                  child: Text(
                hadith.Content,
                style: Theme.of(context).textTheme.bodyLarge,
                textAlign: TextAlign.center,
                textDirection: TextDirection.rtl,
              ))),
        ),
      ),
    );
  }
}
