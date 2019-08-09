import 'dart:async';
import 'dart:math';
import 'dart:typed_data';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'MyApp.dart';
import 'Utilities.dart';
import 'package:flutter/services.dart';
import 'AboutUs.dart';

void main(){

  runApp(new MaterialApp(
    home: new SplashScreen(),
    debugShowCheckedModeBanner: false,
    routes: <String, WidgetBuilder>{
      '/HomeScreen': (BuildContext context) => new MyApp(),
      '/StartScreen': (BuildContext context) => new AboutUs(),

    },
  ));
}



class SplashScreen extends StatefulWidget {

  @override
  _SplashScreenState createState() => new _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  startTime(x) async {
    var _duration = new Duration(seconds: x);
    return new Timer(_duration, navigationPage);
  }

  Future<void> navigationPage() async {
      Navigator.of(context).pushReplacementNamed('/HomeScreen');
  }

  @override
  void initState() {
    super.initState();
    utils = new Utitlies();
    startTime(2);
  }



  @override
  Widget build(BuildContext context) {
    // Only portrait
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        body: Container(
          decoration: new BoxDecoration(
              image: new DecorationImage(
                  image: new AssetImage("assets/imgs/bg.png"),fit: BoxFit.fitWidth
              ),
          ),
          child: Center(
        child: utils.SSLogo,
        ),
        ),
      )
    );
  }
}

