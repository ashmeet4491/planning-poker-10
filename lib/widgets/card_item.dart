import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {
  final String cardValue;

  CardItem(this.cardValue);

  @override
  Widget build(BuildContext context) {
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
                icon: Icon(
                  Icons.lock_open,
                  size: 30,
                ),
              ),
              IconButton(
                icon: Icon(
                  Icons.star_border,
                  size: 30,
                ),
              ),
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
