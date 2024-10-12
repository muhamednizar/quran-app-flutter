import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HadithTabTitle extends StatelessWidget {
  const HadithTabTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          border: Border.symmetric(
              horizontal:
                  BorderSide(color: Theme.of(context).dividerColor, width: 3))),
      child: Text(
        AppLocalizations.of(context)!.hadith,
        style: Theme.of(context).textTheme.bodySmall,
      ),
    );
  }
}
