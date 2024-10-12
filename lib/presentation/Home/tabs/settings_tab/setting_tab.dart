import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:quran_app/presentation/Home/tabs/settings_tab/Widget/language_button_sheet.dart';
import 'package:quran_app/presentation/Home/tabs/settings_tab/Widget/theme_button_sheet.dart';

class SettingsTab extends StatelessWidget {
  const SettingsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 70, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              AppLocalizations.of(context)!.theme,
              style: Theme.of(context).textTheme.labelSmall,
            ),
            SizedBox(
              height: 5,
            ),
            InkWell(
              onTap: () {
                ShowThemeButtonSheet(context);
              },
              child: Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Theme.of(context).colorScheme.secondary,
                          width: 3),
                      borderRadius: BorderRadius.circular(13)),
                  child: Text(
                    AppLocalizations.of(context)!.light,
                    style: Theme.of(context).textTheme.bodyMedium,
                  )),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              AppLocalizations.of(context)!.language,
              style: Theme.of(context).textTheme.labelSmall,
            ),
            SizedBox(
              height: 5,
            ),
            InkWell(
              onTap: () {
                ShowLanguageButtonSheet(context);
              },
              child: Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Theme.of(context).colorScheme.secondary,
                          width: 3),
                      borderRadius: BorderRadius.circular(13)),
                  child: Text(
                    AppLocalizations.of(context)!.english,
                    style: Theme.of(context).textTheme.bodyMedium,
                  )),
            )
          ],
        ),
      ),
    );
  }
}

void ShowLanguageButtonSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (context) => LanguageBottomSheet(),
  );
}

void ShowThemeButtonSheet(BuildContext context) {
  showModalBottomSheet(
      context: context, builder: (context) => ThemeButtonSheet());
}
