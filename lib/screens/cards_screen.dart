import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:planning_poker/widgets/custom_app_bar.dart';

import '../widgets/card_item.dart';

class CardsScreen extends StatelessWidget {
  final List<List<String>> cardSets = const [
    ['?', '0', '1/2', '1', '2', '3', '5', '8', '13', '20', '40', '100', '160']
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(Icon(Icons.settings), (){Navigator.of(context).pushNamed('/settings');}, 'Planning Poker'),
        body: Container(
          color: Colors.lightBlueAccent,
          child: new Swiper(
            itemBuilder: (BuildContext context, int index) {
              return CardItem(cardSets[0][index]);
            },
            itemCount: cardSets[0].length,
            containerHeight: 100,
            itemWidth: 300,
            itemHeight: 400,
            layout: SwiperLayout.STACK,
          ),
        ),
    );
  }
}
