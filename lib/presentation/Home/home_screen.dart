import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:quran_app/config/theme/my_theme.dart';
import 'package:quran_app/core/Utils/assets_manager.dart';
import 'package:quran_app/presentation/Home/tabs/hadith_tab/hadith_tab.dart';
import 'package:quran_app/presentation/Home/tabs/quran_tab/quran_tab.dart';
import 'package:quran_app/presentation/Home/tabs/radio_tab/radio_tab.dart';
import 'package:quran_app/presentation/Home/tabs/settings_tab/setting_tab.dart';
import 'package:quran_app/presentation/Home/tabs/tasbih_tab/tasbih_tab.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> tabs = [
    QuranTab(),
    HadithTab(),
    TasbihTab(),
    RadioTab(),
    SettingsTab(),
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(MyTheme.isDarkEnabled
                  ? AssetsManager.darkMainBg
                  : AssetsManager.lightMainBg),
              fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(title: Text(AppLocalizations.of(context)!.appTitle)),
        bottomNavigationBar: Theme(
          data: Theme.of(context)
              .copyWith(canvasColor: Theme.of(context).primaryColor),
          child: BottomNavigationBar(
            onTap: (index) {
              setState(() {
                selectedIndex = index;
              });
            },
            currentIndex: selectedIndex,
            items: [
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage(
                    AssetsManager.lightQuranIcon,
                  ),
                ),
                label: AppLocalizations.of(context)!.quranTab,
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage(AssetsManager.lightHadeth),
                ),
                label: AppLocalizations.of(context)!.hadithTab,
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage(AssetsManager.lightSebha),
                ),
                label: AppLocalizations.of(context)!.sebhaTab,
              ),
              BottomNavigationBarItem(
                  label: AppLocalizations.of(context)!.radioTab,
                  icon: ImageIcon(
                    AssetImage(AssetsManager.lightRadio),
                  )),
              BottomNavigationBarItem(
                label: AppLocalizations.of(context)!.settingsTab,
                icon: Icon(Icons.settings),
              ),
            ],
          ),
        ),
        body: tabs[selectedIndex],
      ),
    );
  }
}
