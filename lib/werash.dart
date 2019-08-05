import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_youtube/flutter_youtube.dart';
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

                  "إنتظرونا",
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
           CreateElement(utils.werash_List[index].split(',')[0],utils.werash_List[index].split(',')[1])
      ));
}


Widget CreateElement(String s, String videoId) {
  return Container(
    padding: EdgeInsets.only(right: 50),
    child: FlatButton(
      onPressed: () { // 2
        //var youtube = new FlutterYoutube();
        FlutterYoutube.playYoutubeVideoById(
            apiKey: "AIzaSyABWU6ihkSSFKhG4ef6pl2s4DSDiP_I2O4",
            videoId: videoId,
            autoPlay: true,
            fullScreen: true
        );
      },
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
                  style: TextStyle(fontSize: 20.0),
                )),
            width: 120.0,
            height: 40.0,
          ),
        ],
      ),
    ),
  );
}


