import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'Utilities.dart';
import 'MyApp.dart';
class AboutUs extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    AppBar MyAppBar = utils.MyAppBar("عن المؤتمر", 0, context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: MyAppBar,
        body: Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(
                  image: new AssetImage("assets/imgs/bg.png"),
                  fit: BoxFit.cover),
            ),
            child: AboutBuild(context)),
      ),
    );
    ;
  }
}

AboutBuild(BuildContext context) {
  return ListView(
    children: <Widget>[
      utils.header,
      Center(child: Text(utils.klma,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 23),textDirection: TextDirection.rtl,textAlign: TextAlign.center,)),
      Container(height: 10.0,),
      Center(child: Text(utils.klma_end,style: TextStyle(fontWeight: FontWeight.w900,fontSize: 26),textDirection: TextDirection.rtl,textAlign: TextAlign.center,)),
      utils.HPfooter
    ],
  );
}
