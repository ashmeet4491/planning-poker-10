import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:provider/provider.dart';

import '../widgets/card_item.dart';
import '../widgets/custom_app_bar.dart';
import '../providers/settings.provider.dart';

class CardsScreen extends StatelessWidget {
  final List<List<String>> cardSets = const [
    ['?', '0', '1/2', '1', '2', '3', '5', '8', '13', '20', '40', '100', '160']
  ];
  @override
  Widget build(BuildContext context) {
    final settingsProvider = Provider.of<Settings>(context);
    final Map<String, dynamic> settings = settingsProvider.settings;
    return Scaffold(
      appBar: CustomAppBar(),
      body: Container(
        color: Colors.lightBlueAccent,
        child: settings['lock'] == false
            ? new Swiper(
                itemBuilder: (BuildContext context, int index) {
                  return CardItem(cardSets[0][index]);
                },
                scrollDirection: settings['vertical_swipe']
                    ? Axis.vertical
                    : Axis.horizontal,
                loop: settings['loop'],
                itemCount: cardSets[0].length,
                containerHeight: 100,
                itemWidth: 300,
                itemHeight: 400,
                layout: settings['alternative_layout']
                    ? SwiperLayout.STACK
                    : SwiperLayout.TINDER,
              )
            : Container(
                child: CardItem(settings['lock']),
              ),
      ),
    );
  }
}
