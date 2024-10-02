import 'package:flutter/material.dart';
import 'package:quran_app/presentation/Home/tabs/hadith_tab/hadith_tab.dart';

import '../../../../../core/Utils/routes_manager.dart';

class HadithTitleWidget extends StatelessWidget {
  HadithTitleWidget({super.key, required this.hadith});

  HadithItem hadith;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(
          context,
          RoutesManager.HadithDetailsRoute,
          arguments: hadith,
        );
      },
      child: Container(
        padding: EdgeInsets.all(10),
        alignment: Alignment.center,
        child: Text(
          hadith.title,
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ),
    );
  }
}
