import 'package:flutter/material.dart';
import 'Utilities.dart';
import 'TaranemElement.dart';

class Taranem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AppBar MyAppBar = utils.MyAppBar("الترانيم", 0, context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: MyAppBar,
        body: Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(
                  image: new AssetImage("assets/imgs/TaranemBG.png"),
                  fit: BoxFit.cover),
            ),
            child: TaranemBuild(context)),
      ),
    );
  }
}


Widget TaranemBuild(BuildContext context){
  return Container(
        margin: EdgeInsets.only(top: 100.0, bottom: 178),
        child: ListView(
          children: <Widget>[
            CreateElement(context,"الشعار", utils.She3ar),
            utils.fasel,
            CreateElement(context,"آتى إليك", utils.aty_elek),
            utils.fasel,
            CreateElement(context,"إلهنا الطيب", utils.elahna_eltayeb),
            utils.fasel,
            CreateElement(context,"ثبت أنظارك", utils.Sabet_Anzarak),
            utils.fasel,
            CreateElement(context,"ثقلت حمولى", utils.saqolat),
            utils.fasel,
            CreateElement(context,"حيث قادنى", utils.hayso),
            utils.fasel,
            CreateElement(context,"سلمت نفسى", utils.salamto),
            utils.fasel,
            CreateElement(context,"فى وسط همومك", utils.fe_wasat),
            utils.fasel,
            CreateElement(context,"لامس قلبى", utils.lames),
            utils.fasel,
            CreateElement(context,"يا من بحضوره", utils.ya_man),
            utils.fasel,
          ],
        ));
  }


Widget CreateElement(BuildContext context ,String s, String content) {
  return Container(
    padding: EdgeInsets.only(right: 50),
    child: FlatButton(
      onPressed:(){Navigator.of(context).push(MaterialPageRoute(builder: (context) => TaranemElement(s,content)));},
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
                  style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.w900),
                )),
            width: 120.0,
            height: 40.0,
          ),
        ],
      ),
    ),
  );
}

prepareTarnemaElement(BuildContext context,String name,String content) {
}

