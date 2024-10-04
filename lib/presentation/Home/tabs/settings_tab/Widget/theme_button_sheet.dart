import 'package:flutter/material.dart';

class ThemeButtonSheet extends StatelessWidget {
  const ThemeButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Light',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              Icon(
                Icons.check,
                size: 25,
                color: Theme.of(context).primaryColor,
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Dark',
            style: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(color: Colors.black),
          ),
        ],
      ),
    );
  }
}
