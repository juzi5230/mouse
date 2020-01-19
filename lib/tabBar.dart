// import 'package:dio/dio.dart';
// import 'package:dio/dio.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'utils/net_utils.dart';
// import 'package:app/utils/net_utils.dart';

// NetUtils.get('https://api.github.com/users/cheng').then(res => {
//   console.log("222")
// })
// Response response;
// response=await dio.get("/test?id=12&name=wendu");
// print(response.data.toString());
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
  const CardList(assetSrc: 'images/nalan.jpg', title: '词人： 纳兰容若', desc: '纳兰性德， 字容若，清朝初年词人，为世人留下了诸多脍炙人口的词句，比如：人生若只如初见，何事秋风悲画扇。'),
  const CardList(assetSrc: 'images/pride.jpg', title: '《Pride and Prejudice》', desc: '小说描写了小乡绅班纳特五个待字闺中的千金，主角是二女儿伊丽莎白。她在舞会上认识了达西，但是耳闻他为人傲慢，一直对他心生排斥，经历一番周折，伊丽莎白解除了对达西的偏见，达西也放下傲慢，有情人终成眷属。'),
  const CardList(assetSrc: 'images/see.jpg', title: '《看见》', desc: '《看见》是2013年01月1日由广西师范大学出版社出版的传记，作者是柴静。 [1]  该书既是柴静个人的成长告白书,某种程度上亦可视作中国社会十年变迁的备忘录。'),
  const CardList(assetSrc: 'images/normal.jpg', title: '《平凡的世界》', desc: '是中国作家路遥创作的一部百万字的小说。这是一部全景式地表现中国当代城乡社会生活的长篇小说，全书共三部。1986年12月首次出版。'),
  const CardList(assetSrc: 'images/day.jpg', title: '《白夜行》', desc: '《白夜行》是日本作家东野圭吾创作的长篇小说，也是其代表作。该小说于1997年1月至1999年1月间连载于期刊，单行本1999年8月在日本发行。故事围绕着一对有着不同寻常情愫的小学生展开。'),
  const CardList(assetSrc: 'images/friendship.jpg', title: '《我可以咬一口吗》', desc: '《我可以咬一口吗》是2016年4月天津人民出版社出版的图书，作者是[美]莉兹·克里莫 ，该书收录了莉兹·克里莫一百多张逗趣漫画。'),
  const CardList(assetSrc: 'images/js.png', title: '《JavaScript高级程序设计》', desc: '《JavaScript高级程序设计》是2006年人民邮电出版社出版的图书，作者是(美)(Nicholas C.Zakas)扎卡斯。本书适合有一定编程经验的开发人员阅读，也可作为高校相关专业课程的教材。'),
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
                    flex: 1,
                    child: Container(
                      // child: Text('内容展示21',),
                      child: Image(
                        image: AssetImage(cardLists[index].assetSrc),
                        fit: BoxFit.fill
                      ),
                    ), 
                  ),
                  new Expanded(
                    flex: 3,
                    child: new Padding(
                      padding: EdgeInsets.all(8),
                      child: Column(
                        children: <Widget>[
                          Text(
                            cardLists[index].title, 
                            style: TextStyle(height: 1.2, fontSize: 20),
                            textAlign: TextAlign.left,
                          ),
                          Text(
                            cardLists[index].desc,
                            style: TextStyle(color: Color.fromARGB(200, 100, 100, 100)),
                          )
                        ],
                        crossAxisAlignment: CrossAxisAlignment.start,
                    )
                    )
                  ), 
                ]
              ),
            ]
          );
        }
      );
    } else {
    //  var s =  NetUtils.get('https://api.github.com/users/cheng');
    // dio.options.responseType = ResponseType.plain;
    //  Response s =  await dio.get('https://api.github.com/users/cheng');
     var s;
     var l;
    //  NetUtils.get('https://api.github.com/users/cheng').then((res) => {
      print(2);
    //   FormData formData = new FormData.from({
    //   "mobile": "13981983532",
    //   "pwd": "983532",
    // });
    //  NetUtils.get('http://www.mocky.io/v2/5c80ea4f310000c016771c07').then((res) => {
    //   //  s = res['data'],
    //   //  l = res['subscriptions_url'],
    //    print('kks'),
    //    print(3),
    //    print(res.data.toString())
    //  }).catchError((onError) => {
    //    print('1'),
    //    print(onError)
    //  });
     print(9);
     print('lalallaallalalala');
     print(s);
     print(l);
      return new Container(
        child:Text('12222'),
      );
    }
  }
}