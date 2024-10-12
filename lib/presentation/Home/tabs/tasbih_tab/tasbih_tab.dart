import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:quran_app/core/Utils/assets_manager.dart';

class TasbihTab extends StatefulWidget {
  TasbihTab({super.key});

  @override
  State<TasbihTab> createState() => _TasbihTabState();
}

class _TasbihTabState extends State<TasbihTab> {
  int TasbihCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Image.asset(AssetsManager.lightsebhaLogo),
          SizedBox(
            height: 50,
          ),
          Text(
            AppLocalizations.of(context)!.tasbihCount,
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            alignment: Alignment.center,
            width: 60,
            height: 65,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Color.fromRGBO(183, 147, 95, .7)),
            child: Text(
              '$TasbihCounter',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          SizedBox(
            height: 50,
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                TasbihCounter++;
              });
              print(TasbihCounter);
            },
            child: Container(
              alignment: Alignment.center,
              width: 200,
              height: 65,
              child: Text('سبحان الله',
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.copyWith(color: Colors.white)),
            ),
          )
        ],
      ),
    );
  }
}
