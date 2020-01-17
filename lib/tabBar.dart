import 'package:flutter/material.dart';
class Choice {
  const Choice({ this.title, this.icon, this.index});
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

class CardList {
  const CardList({ this.assetSrc, this.title, this.desc});
  final String assetSrc;
  final String title;
  final String desc;
}

const List<CardList> cardLists = const <CardList>[
  const CardList(assetSrc: '', title: '', desc: ''),
  const CardList(assetSrc: '', title: '', desc: ''),
  const CardList(assetSrc: '', title: '', desc: ''),
  const CardList(assetSrc: '', title: '', desc: ''),
  const CardList(assetSrc: '', title: '', desc: ''),
  const CardList(assetSrc: '', title: '', desc: ''),
  const CardList(assetSrc: '', title: '', desc: ''),
];

const entries = ['1', '2', '3','1', '2', '3', '1', '2', '3','1', '2', '3','1', '2', '3'];
class ChoiceCard extends StatelessWidget {
  const ChoiceCard({ Key key, this.choice }) : super(key: key);

  final Choice choice;

  @override
  Widget build(BuildContext context) {
    // final TextStyle textStyle = Theme.of(context).textTheme.display1;
    return new Card(
      color: Colors.white,
      child: new Center(
        child: new CardContent(choice: choice,)
      ),
    );
  }
}

class CardContent extends StatelessWidget {
  const CardContent({Key key, this.choice}) : super(key: key);
  final Choice choice;
  @override
  Widget build(BuildContext context) {
    if(choice.index == 1) {
      return ListView.separated(
        padding: const EdgeInsets.all(8),
        itemCount: cardLists.length,
        separatorBuilder: (BuildContext context, int index) => const Divider(),
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  new Expanded(
                    flex: 2,
                    child: Container(
                      // child: Text('内容展示21',),
                      child: Image(
                        image: AssetImage('images/nalan.jpg'),
                        fit: BoxFit.fill
                      ),
                      height: 100,
                    ), 
                  ),
                  new Expanded(
                    flex: 3,
                    child: Container(
                      child: Text(
                        '描述性文字121',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                        ),
                      ),
                    ),
                  ), 
                ]
              ),
            ]
          );
        }
      );
    } else {
      return new Container(
        child:Text('12222')
      );
    }
  }
}