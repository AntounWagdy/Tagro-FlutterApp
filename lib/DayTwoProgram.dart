import 'package:flutter/material.dart';
import 'Utilities.dart';

class DayTwoProgram extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AppBar MyAppBar = utils.MyAppBar("برنامج اليوم الثانى", 0, context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: MyAppBar,
        body: Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(
                  image: new AssetImage("assets/imgs/DayTwoBG.png"),
                  fit: BoxFit.cover),
            ),
            child: DayaTwoProgramBuild()),
      ),
    );
    ;
  }
}

class DayaTwoProgramBuild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 100.0, bottom: 178),
        child: ListView(
          children: <Widget>[
            CreateElement("قداس", "9.00~7.00"),
            utils.fasel,
            CreateElement("فطار", "10.00~9.00"),
            utils.fasel,
            CreateElement("ترانيم", "11.30~11.00"),
            utils.fasel,
            CreateElement("شكاوى ومراحل", "12.30~11.30"),
            utils.fasel,
            CreateElement("ثبات أيوب البار", "2.00~1.00"),
            utils.fasel,
            CreateElement("غذاء وراحة", "5.00~2.00"),
            utils.fasel,
            CreateElement("عشية", "6.00~5.00"),
            utils.fasel,
            CreateElement("حق المحزون", "8.00~6.00"),
            utils.fasel,
            CreateElement("تسبحة", "10.00~8.00"),
            utils.fasel,
            CreateElement("العشاء", "10.00"),
            utils.fasel,
            CreateElement("النوم", "12.00"),
            utils.fasel,
          ],
        ));
  }

  CreateElement(String s, String t) {
    double size = 20;
    if (s.length > 10) size = 18;
    if (s.length > 15) size = 16;
    return Container(
      margin: EdgeInsets.only(right: 65.0),
      child: Row(
        textDirection: TextDirection.rtl,
        children: <Widget>[
          utils.Arrow,
          Container(
            width: 15.0,
          ),
          Container(
            decoration: BoxDecoration(
                color: Color.fromRGBO(244, 209, 157, 0.75),
                shape: BoxShape.rectangle,
                borderRadius: new BorderRadius.circular(8.0),
                boxShadow: <BoxShadow>[
                  new BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10.0,
                      offset: new Offset(0, 10)
                  )
                ]
            ),

            child: Center(
                child: Column(
              children: <Widget>[
                Text(
                  s,
                  maxLines: 1,
                  style: TextStyle(fontSize: size, fontWeight: FontWeight.w900),
                ),
                Text(
                  t,
                  maxLines: 1,
                  style: TextStyle(fontSize: 20.0),
                ),
              ],
            )),
            width: 120.0,
            height: 70.0,
          ),
        ],
      ),
    );
  }
}
