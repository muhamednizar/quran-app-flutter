import 'package:flutter/material.dart';

class ChapterNameWidget extends StatelessWidget {
  const ChapterNameWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      decoration: BoxDecoration(
          border: Border.symmetric(
        horizontal: BorderSide(color: Theme.of(context).primaryColor, width: 5),
      )),
      child: IntrinsicHeight(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          textDirection: TextDirection.rtl,
          children: [
            Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  child: Text(
                    'Chapter Name',
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall
                        ?.copyWith(fontSize: 19, fontWeight: FontWeight.w800),
                  ),
                )),
            Expanded(
                flex: 1,
                child: VerticalDivider(
                  color: Theme.of(context).primaryColor,
                  width: 2,
                  thickness: 3,
                )),
            Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  child: Text(
                    'Number of Verses',
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall
                        ?.copyWith(fontSize: 19, fontWeight: FontWeight.w800),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
