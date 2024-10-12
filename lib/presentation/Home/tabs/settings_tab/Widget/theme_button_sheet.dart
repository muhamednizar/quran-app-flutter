import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ThemeButtonSheet extends StatefulWidget {
  const ThemeButtonSheet({super.key});

  @override
  State<ThemeButtonSheet> createState() => _ThemeButtonSheetState();
}

class _ThemeButtonSheetState extends State<ThemeButtonSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildSelectedThemeItem(AppLocalizations.of(context)!.light),
          SizedBox(
            height: 20,
          ),
          buildUnSelectedThemeItem(AppLocalizations.of(context)!.dark),
        ],
      ),
    );
  }

  Widget buildSelectedThemeItem(String text) {
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

  Widget buildUnSelectedThemeItem(String text) {
    return Text(text, style: Theme.of(context).textTheme.displayMedium);
  }
}
