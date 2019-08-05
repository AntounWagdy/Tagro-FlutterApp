import 'dart:async';
import 'dart:math';
import 'dart:typed_data';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'MyApp.dart';
import 'Utilities.dart';
import 'package:flutter/services.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
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


  FlutterLocalNotificationsPlugin localNotificationsPlugin =
  FlutterLocalNotificationsPlugin();
  initializeNotifications() async {
    var initializeAndroid = AndroidInitializationSettings('ic_launcher');
    var initializeIOS = IOSInitializationSettings();
    var initSettings = InitializationSettings(initializeAndroid, initializeIOS);
    await localNotificationsPlugin.initialize(initSettings);
  }

  startTime(x) async {
    var _duration = new Duration(seconds: x);
    return new Timer(_duration, navigationPage);
  }

  int id;
  Future<void> navigationPage() async {
    id = 0;
    try {
      utils.sp = await SharedPreferences.getInstance();
      if (!utils.sp.containsKey('welcome')) {
        utils.sp.setBool('welcome', true);
        if (Theme.of(context).platform == TargetPlatform.android)
          await singleNotification(DateTime.now().add(new Duration(seconds: 5)), "أهلا بكم فى مؤتمر طاجرو :)");

        DateTime time;
        //Day 1
        time = new DateTime(2019, 8, 9, 11, 30).subtract(new Duration(minutes: 10));
        await singleNotification(time, "سيبدأ الموضوع الإفتتاحى بعد 10 دقائق");

        time = new DateTime(2019, 8, 9, 12, 15).subtract(new Duration(minutes: 10));
        await singleNotification(time, "سيبدأ تحفيظ الشعار بعد 10 دقائق");

        time = new DateTime(2019, 8, 9, 12, 45).subtract(new Duration(minutes: 10));
        await singleNotification(time, "سيبدأ موضوع \"أيوب فى الليتورجية\" بعد 10 دقائق");

        time = new DateTime(2019, 8, 9, 17, 00).subtract(new Duration(minutes: 10));
        await singleNotification(time, "ستبدأ العشية بعد 10 دقائق");

        time = new DateTime(2019, 8, 9, 19, 30).subtract(new Duration(minutes: 10));
        await singleNotification(time, "سيبدأ إجتماع الصلاة بعد 10 دقائق");


        //Day 2
        time = new DateTime(2019, 8, 10, 7, 0).subtract(new Duration(minutes: 10));
        await singleNotification(time, "سيبدأ القداس بعد 10 دقائق");

        time = new DateTime(2019, 8, 10, 11, 0).subtract(new Duration(minutes: 10));
        await singleNotification(time, "ستبدأ فقرة الترانيم بعد 10 دقائق");

        time = new DateTime(2019, 8, 10, 13, 0).subtract(new Duration(minutes: 10));
        await singleNotification(time, "ستبدأ موضوع \"ثبات أيوب البار\" بعد 10 دقائق");

        time = new DateTime(2019, 8, 10, 17, 00).subtract(new Duration(minutes: 10));
        await singleNotification(time, "ستبدأ العشية بعد 10 دقائق");


        //Day 3
        time = new DateTime(2019, 8, 11, 7, 0).subtract(new Duration(minutes: 10));
        await singleNotification(time, "سيبدأ القداس بعد 10 دقائق");

        time = new DateTime(2019, 8, 11, 11, 0).subtract(new Duration(minutes: 10));
        await singleNotification(time, "ستبدأ فقرة الترانيم بعد 10 دقائق");

        time = new DateTime(2019, 8, 11, 4, 10).subtract(new Duration(minutes: 10));
        await singleNotification(time, "شكرا لالتزامكم، الي اللقاء في المؤتمر القادم ان شاء الله");


        Navigator.of(context).pushReplacementNamed('/StartScreen');
      }
      else {
        Navigator.of(context).pushReplacementNamed('/HomeScreen');
      }
    }
    catch (Exception) {
      Navigator.of(context).pushReplacementNamed('/HomeScreen');
    }
  }

  @override
  void initState() {
    super.initState();
    utils = new Utitlies();
    startTime(2);
    initializeNotifications();
  }

  Future singleNotification(
      DateTime datetime, String subtext,
      {String sound}) async {
    int hashcode = id++;
    if(DateTime.now().difference(datetime).inMinutes > 10) // last edit
      return;
    String message = "مؤتمر طاجرو";
    var vibrationPattern = Int64List(2);
    vibrationPattern[0] = 0;
    vibrationPattern[1] = 2000;

    var androidChannel = AndroidNotificationDetails(
      'channel-id',
      'channel-name',
      'channel-description',
      importance: Importance.Max,
      priority: Priority.Max,
      icon: 'ic_launcher',
      sound: 'slow_spring_board',
      vibrationPattern: vibrationPattern,
      enableLights: true,
        color: const Color.fromARGB(255, 255, 0, 0),
        ledColor: const Color.fromARGB(255, 255, 0, 0),
        ledOnMs: 1000,
        ledOffMs: 500
    );

    var iosChannel = IOSNotificationDetails();
    var platformChannel = NotificationDetails(androidChannel, iosChannel);
    localNotificationsPlugin.schedule(
        hashcode, message, subtext, datetime, platformChannel,
        payload: hashcode.toString());
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

