import 'package:flutter/material.dart';
class Choice {
  const Choice({ this.title, this.icon, this.index });
  final String title;
  final IconData icon;
  final int index;
}
  const List<Choice> choices = const <Choice>[
  const Choice(title: 'CAR', icon: Icons.directions_car, index: 1),
  const Choice(title: 'BICYCLE', icon: Icons.directions_bike, index: 2),
  const Choice(title: 'BOAT', icon: Icons.directions_boat, index: 3),
  const Choice(title: 'BUS', icon: Icons.directions_bus, index: 4),
  const Choice(title: 'TRAIN', icon: Icons.directions_railway, index: 5),
  const Choice(title: 'WALK', icon: Icons.directions_walk, index: 6),
];

class ChoiceCard extends StatelessWidget {
  const ChoiceCard({ Key key, this.choice }) : super(key: key);

  final Choice choice;

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = Theme.of(context).textTheme.display1;
    return new Card(
      color: Colors.white,
      child: new Center(
        child: 
        new Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new Icon(choice.icon, size: 128.0, color: textStyle.color),
            new Text(choice.title + '${choice.index}', style: textStyle),
          ],
        ),
      ),
    );
  }
}