import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quran_app/core/Utils/colors_manager.dart';
import 'package:quran_app/core/Utils/routes_manager.dart';
import 'package:quran_app/presentation/Home/tabs/quran_tab/quran-widgets/quran_title_widget/chapter_name_widget.dart';

class QuranTitleWidget extends StatelessWidget {
  String SuraTitle;
  String NumberOfVerses;
  int index;

  QuranTitleWidget(
      {super.key,
      required this.SuraTitle,
      required this.NumberOfVerses,
      required this.index});

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, RoutesManager.QuranDetailsRoute,
              arguments: SuraArgs(SuraName: SuraTitle, index: index));
        },
        child: Row(
          textDirection: TextDirection.rtl,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
                child: Text(
              SuraTitle,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleSmall,
            )),
            Expanded(
                child: VerticalDivider(
              color: Theme.of(context).dividerColor,
              width: 3,
              thickness: 3,
            )),
            Expanded(
                child: Text(
              NumberOfVerses,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleSmall,
            )),
          ],
        ),
      ),
    );
  }
}

class SuraArgs {
  String SuraName;
  int index;

  SuraArgs({required this.SuraName, required this.index});
}
