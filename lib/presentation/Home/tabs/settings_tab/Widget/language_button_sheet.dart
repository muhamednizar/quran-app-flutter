import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:quran_app/provider/settings_provider.dart';

class LanguageBottomSheet extends StatefulWidget {
  const LanguageBottomSheet({super.key});

  @override
  State<LanguageBottomSheet> createState() => _LanguageBottomSheetState();
}

class _LanguageBottomSheetState extends State<LanguageBottomSheet> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvider>(context);
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
              onTap: () {
                provider.ChangeAppLanguage('en');
              },
              child: provider.englishIsSelected()
                  ? buildSelectedLanguageItem(
                      AppLocalizations.of(context)!.english)
                  : buildUnSelectedLanguageItem(
                      AppLocalizations.of(context)!.english)),
          SizedBox(
            height: 20,
          ),
          InkWell(
              onTap: () {
                provider.ChangeAppLanguage('ar');
              },
              child: provider.arabicIsSelected()
                  ? buildSelectedLanguageItem(
                      AppLocalizations.of(context)!.arabic)
                  : buildUnSelectedLanguageItem(
                      AppLocalizations.of(context)!.arabic)),
        ],
      ),
    );
  }

  Widget buildSelectedLanguageItem(String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        Icon(
          Icons.check,
          size: 25,
        )
      ],
    );
  }

  Widget buildUnSelectedLanguageItem(String text) {
    return Text(text, style: Theme.of(context).textTheme.displayMedium);
  }
}
