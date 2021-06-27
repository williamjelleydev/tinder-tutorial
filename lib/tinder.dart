import 'package:flutter/material.dart';
import 'package:flutter_swipable/flutter_swipable.dart';

final List data = [
  {
    'color': Colors.red,
  },
  {
    'color': Colors.green,
  },
  {
    'color': Colors.blue
  }
];

class Tinder extends StatefulWidget {
  @override
  _TinderState createState() => _TinderState();
}

class _TinderState extends State<Tinder> {

  int _currentIndex = 0;

  List<Card> cards = [
    Card(
      color: data[0]['color'],
    ),
    Card(
      color: data[1]['color']
    ),
    Card(
        color: data[2]['color']
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.height * 0.7,
      child: Stack(
        children: cards
      )
    );
  }
}

class Card extends StatelessWidget {

  final Color color;
  final Function onSwipe;

  Card({this.color, this.onSwipe});

  @override
  Widget build(BuildContext context) {
    return Swipable(
      onSwipeEnd: onSwipe,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            16.0
          ),
          color: color,

        ),
      )
    );
  }
}

