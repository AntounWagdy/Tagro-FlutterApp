import 'package:flutter/material.dart';
import 'Utilities.dart';
import 'BernamegHome.dart';
import 'Taranem.dart';
import 'Videos.dart';
import'SendEmail.dart';
import 'werash_prepare_screen.dart';
import 'AboutUs.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AppBar MyAppBar = utils.MyAppBar("إجتماع خدام", 0, context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: utils.MyDrawer(MyAppBar.preferredSize.height,context),
        appBar: MyAppBar,
        body: MyHomepage(context),
      ),
    );
  }
}

Widget MyHomepage(BuildContext context) {
  return Container(
    decoration: new BoxDecoration(
      image: new DecorationImage(
          image: new AssetImage("assets/imgs/bg.png"), fit: BoxFit.fitWidth),
    ),
    child: CreateListView(context),
  );
}

ListView CreateListView(BuildContext context) {
  double containerWidth = 15.0;
  return ListView(
    children: <Widget>[
      Container(
        height: 20.0,
      ),
      FlatButton(
          child: utils.B1,
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => BernamegHome()));
          }),
      Container(
        height: containerWidth,
      ),
      FlatButton(
          child: utils.B2,
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => Taranem()));
          }),
      Container(
        height: containerWidth,
      ),
      FlatButton(
        child: utils.B3,
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => Videos()));
          }
      ),
      Container(
        height: containerWidth,
      ),
      FlatButton(
        child: utils.B4,
          onPressed: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => werash_prepare_screen()));
      }
      ),
      Container(
        height: containerWidth,
      ),
      FlatButton(
        child: utils.B6,
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => SendEmail()));
          }),
      FlatButton(
          child: utils.HPfooter,
          highlightColor: Colors.white.withOpacity(0),
        onPressed: (){
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context)=>AboutUs()));
        },
      ), // mmkn teb2a 3n el mo2tamar
    ],
  );
}
