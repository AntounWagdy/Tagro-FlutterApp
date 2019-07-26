import 'dart:convert';
import 'package:contentful_rich_text/contentful_rich_text.dart';
import 'package:flutter/material.dart';
import 'Utilities.dart';
import 'TaranemElement.dart';

class werash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print(utils.werash_List.length.toString()+" elemets has been recieved");
    AppBar MyAppBar = utils.MyAppBar("الورش", 0, context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: MyAppBar,
        body: Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(
                  image: new AssetImage("assets/imgs/werashBG.png"),
                  fit: BoxFit.cover),
            ),
            child: WerashBuild(context)),
      ),
    );
  }
}


Widget WerashBuild(BuildContext con){
      if(utils.werash_List.length < 1){
        return Center(
          child: Container(
            margin: EdgeInsets.only(top: 100.0, bottom: 178),
            width: 150,
            height: 150,
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

                  "يلا معلش",
                  style: TextStyle(fontWeight: FontWeight.w500,fontSize: 30.0),
                  textDirection: TextDirection.rtl,
              ),

            ),
          ),
        );
      }
      return Container(
      margin: EdgeInsets.only(top: 100.0, bottom: 178),
      child: ListView.builder(
        itemCount: utils.werash_List.length,
        itemBuilder: (context,index)=>
           CreateElement(con, utils.werash_List[index].split("\n")[0], utils.werash_List[index].substring(utils.werash_List[index].split("\n")[0].length+1)),)
  );
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

