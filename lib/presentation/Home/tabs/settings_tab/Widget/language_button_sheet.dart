import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LanguageBottomSheet extends StatefulWidget {
  const LanguageBottomSheet({super.key});

  @override
  State<LanguageBottomSheet> createState() => _LanguageBottomSheetState();
}

class _LanguageBottomSheetState extends State<LanguageBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildSelectedLanguageItem(AppLocalizations.of(context)!.english),
          SizedBox(
            height: 20,
          ),
          buildUnSelectedLanguageItem(AppLocalizations.of(context)!.arabic),
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
