import 'package:flutter/material.dart';
import 'package:quran_app/config/theme/my_theme.dart';
import 'package:quran_app/core/Utils/assets_manager.dart';
import 'package:quran_app/core/Utils/strings_manager.dart';
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
        appBar: AppBar(title: const Text(StringManager.appTitle)),
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
            items: const [
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage(
                    AssetsManager.lightQuranIcon,
                  ),
                ),
                label: StringManager.quranLabel,
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage(AssetsManager.lightHadeth),
                ),
                label: StringManager.hadithLabel,
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage(AssetsManager.lightSebha),
                ),
                label: StringManager.tasbehLabel,
              ),
              BottomNavigationBarItem(
                  label: StringManager.radioLabel,
                  icon: ImageIcon(
                    AssetImage(AssetsManager.lightRadio),
                  )),
              BottomNavigationBarItem(
                label: StringManager.settingsLabel,
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
