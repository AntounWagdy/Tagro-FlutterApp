import 'package:flutter/material.dart';
import 'Utilities.dart';

class TaranemElement extends StatelessWidget {
  String name;
  String content;
  TaranemElement(String name, String content){
    this.name = name;
    this.content = content;
  }


  @override
  Widget build(BuildContext context) {
    AppBar MyAppBar = utils.MyAppBar(name, 0, context);
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
            child: TaranemElementBuild(name,content)),
      ),
    );
    ;
  }
}

TaranemElementBuild(String title,String content) {
  return ListView(
    children: <Widget>[
      utils.header,
      Center(child: Text(title,style: TextStyle(fontWeight: FontWeight.w900,fontSize: 23),textDirection: TextDirection.rtl,textAlign: TextAlign.center,)),
      Center(child: Text(content,style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20),textDirection: TextDirection.rtl,textAlign: TextAlign.center,)),
      utils.footer
],
  );
}
