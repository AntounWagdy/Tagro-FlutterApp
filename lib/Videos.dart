import 'package:flutter/material.dart';
import 'package:flutter_youtube/flutter_youtube.dart'; // 1
import 'Utilities.dart';


class Videos extends StatefulWidget{
  @override
  _VideoState createState()=> new _VideoState();
}

class _VideoState extends State<Videos> {
  @override
  Widget build(BuildContext context) {
    AppBar MyAppBar = utils.MyAppBar("فيديوهات", 0, context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: MyAppBar,
        body: Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(
                  image: new AssetImage("assets/imgs/VideosBG.png"),
                  fit: BoxFit.cover),
            ),
            child: VideosBuild(context)),
      ),
    );
  }
  }

  VideosBuild(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 100.0, bottom: 178),
        child: ListView(
          children: <Widget>[
            CreateElement("Video 1", "PBxqAU0LWgo"),
            utils.fasel,
            CreateElement("Video 2", "PBxqAU0LWgo"),
            utils.fasel,
          ],
        ));
  }
Widget CreateElement(String s, String videoId) {
  return Container(
    padding: EdgeInsets.only(right: 50),
    child: FlatButton(
      onPressed: (){ // 2
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

    /*
      onTap: () {
        var youtube = new FlutterYoutube();

        if(text=="رؤيا العظام اليابسة"){
          youtube.playYoutubeVideoById(
              apiKey: "AIzaSyABWU6ihkSSFKhG4ef6pl2s4DSDiP_I2O4",
              videoId: "-YsVzzay67c",
              autoPlay: true,
              fullScreen: true
          );
        }
        else{
          youtube.playYoutubeVideoById(
              apiKey: "AIzaSyABWU6ihkSSFKhG4ef6pl2s4DSDiP_I2O4",
              videoId: "EKh_U2NnIs8",
              autoPlay: true,
              fullScreen: true
          );
        }

      },
      */


// 3
  void playYoutubeVideo() {
    FlutterYoutube.playYoutubeVideoByUrl(
      apiKey: "AIzaSyA3lV6KuEWbsD8YgkCGNMH87mlSL27GSx0",
      videoUrl: "https://www.youtube.com/watch?v=-YsVzzay67c",
    );
  }


/*
  Youtube() {
    FlutterYoutube.playYoutubeVideoByUrl(
        apiKey: "AIzaSyA3lV6KuEWbsD8YgkCGNMH87mlSL27GSx0",
        videoUrl: "https://www.youtube.com/watch?v=-YsVzzay67c",
        autoPlay: true, //default falase
        fullScreen: true //default false
    );
  }*/

