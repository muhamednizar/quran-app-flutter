import 'package:flutter/material.dart';

import '../../../../../core/Utils/strings_manager.dart';

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
        StringManager.hadithTabTitle,
        style: Theme.of(context).textTheme.bodySmall,
      ),
    );
  }
}
