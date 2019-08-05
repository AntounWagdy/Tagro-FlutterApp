import 'package:flutter/material.dart';
import 'Utilities.dart';
import 'DayOneProgram.dart';
import 'DayTwoProgram.dart';
import 'DayThreeProgram.dart';

class BernamegHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AppBar MyAppBar = utils.MyAppBar("البرنامج", 0, context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: MyAppBar,
        body: BernamegHomeBuild(context),
      ),
    );
  }
}

Widget BernamegHomeBuild(BuildContext context) {
  return Container(
    decoration: new BoxDecoration(
      image: new DecorationImage(
          image: new AssetImage("assets/imgs/BernamegBG.png"),
          fit: BoxFit.cover),
    ),
    child: CreateListView(context),
  );
}

Widget CreateListView(BuildContext context) {
  return Container(
    margin: EdgeInsets.only(top: 100.0),
    child: ListView(
      children: <Widget>[
        CreateElement("اليوم الأول", () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => DayOneProgram()));
        }),
        utils.fasel,
        CreateElement("اليوم الثانى", () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => DayTwoProgram()));
        }),
        utils.fasel,
        CreateElement("اليوم الثالث", () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => DayThreeProgram()));
        }),
      ],
    ),
  );
}

Widget CreateElement(String s, Null Function() param1) {
  return Container(
    padding: EdgeInsets.only(right: 50),
    child: FlatButton(
      onPressed: param1,
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
                child: Text(
              s,
              style: TextStyle(fontWeight: FontWeight.w900,fontSize: 20.0),
            )),
            width: 120.0,
            height: 40.0,
          ),
        ],
      ),
    ),
  );
}
