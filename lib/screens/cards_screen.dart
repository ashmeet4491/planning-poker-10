import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

import '../widgets/card_item.dart';

class CardsScreen extends StatelessWidget {
  List<List<String>> cardSets = const [
    ['?', '0', '1/2', '1', '2', '3', '5', '8', '13', '20', '40', '100', '160']
  ];
  @override
  Widget build(BuildContext context) {
    return new Swiper(
      itemBuilder: (BuildContext context, int index) {
        return CardItem(cardSets[0][index]);
      },
      itemCount: cardSets[0].length,
      loop: false,
      itemWidth: 300,
      itemHeight: 400,

      layout: SwiperLayout.TINDER,
    );
  }
}
