import 'dart:async';
import 'package:flutter/material.dart';
import 'MyApp.dart';
import 'Utilities.dart';
import 'package:flutter/scheduler.dart' show timeDilation;
import 'package:flutter/services.dart';


void main(){
  runApp(new MaterialApp(
    home: new SplashScreen(),
    debugShowCheckedModeBanner: false,
    routes: <String, WidgetBuilder>{
      '/HomeScreen': (BuildContext context) => new MyApp()
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

  void navigationPage() {
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