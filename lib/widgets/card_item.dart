import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/settings.provider.dart';

class CardItem extends StatelessWidget {
  final String cardValue;

  CardItem(this.cardValue);

  @override
  Widget build(BuildContext context) {
    final settingsProvider = Provider.of<Settings>(context);
    final Map<String, dynamic> settings = settingsProvider.settings;
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: BorderSide(
          color: Colors.white,
          width: 5,
        ),
      ),
      elevation: 5,
      color: Colors.blue,
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                splashColor: Colors.transparent,
                icon: Icon(
                  settings['lock'] == cardValue ? Icons.lock : Icons.lock_open,
                  size: 30,
                  color: Colors.white,
                ),
                onPressed: () {
                  settingsProvider.lockCard(cardValue);
                },
              ),
              // IconButton(
              //   splashColor: Colors.transparent,
              //   icon: Icon(
              //     settings['favorite'] == cardValue
              //         ? Icons.star
              //         : Icons.star_border,
              //     size: 30,
              //     color: Colors.white,
              //   ),
              //   onPressed: () {
              //     settingsProvider.changeSettings('favorite', cardValue);
              //   },
              // ),
            ],
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(
                bottom: 30,
              ),
              child: Center(
                child: Text(
                  cardValue,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 150,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
