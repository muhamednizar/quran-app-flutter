import 'package:flutter/material.dart';

class VerseWidget extends StatelessWidget {
  VerseWidget({super.key, required this.VerseItem});

  String VerseItem;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Card(
        child: Container(
          padding: EdgeInsets.all(7),
          alignment: Alignment.center,
          child: Text(VerseItem,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyLarge),
        ),
      ),
    );
  }
}
