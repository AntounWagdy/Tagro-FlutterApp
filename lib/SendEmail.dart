import 'package:mailer/mailer.dart';
import 'package:flutter/material.dart';
import 'Utilities.dart';

class SendEmail extends StatefulWidget {
  @override
  _MyCustomFromState createState() => _MyCustomFromState();
}

class _MyCustomFromState extends State<SendEmail>{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Container(
              decoration: new BoxDecoration(
                image: new DecorationImage(
                    image: new AssetImage("assets/imgs/bg.png"),
                    fit: BoxFit.cover),
              ),
              child: this.getMyMawade3Screen(context)),
          appBar:  utils.MyAppBar("بريد الخدام", 0,context),
        ));
  }

  final controller = TextEditingController();

  getMyEmailer(BuildContext context) {
    controller.text = controller.text.trim();
    return Container(
      padding: EdgeInsets.only(left: 16.0),
      alignment: Alignment.bottomLeft,
      child: FloatingActionButton(
        backgroundColor: Color.fromRGBO(244, 150, 50, 1),
        child: new Icon(Icons.send,textDirection: TextDirection.rtl,),
        onPressed: () {
          if(controller.text.isEmpty){
            return;
          }
          dialog_not("برجاء الإنتظار");
          var options = new GmailSmtpOptions()
            ..username = 'Egtma35odam@gmail.com'
            ..password = 'E5123456789';
          var emailTransport = new SmtpTransport(options);
          var envelope = new Envelope()
            ..from = "Egtma35odam@gmail.com"
            ..recipients.add("Egtma35odam@gmail.com")
            ..subject = "Testing"
            ..text = controller.text;

          emailTransport
              .send(envelope)
              .then((envelope) => done(context))
              .catchError((e) => notdone(context));
        },

      ),
    );
  }

  getMyMawade3Screen(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 40.0, left: 10.0, right: 10.0),
        child: Stack(children: <Widget>[
          Container(
              decoration: new BoxDecoration(
                color: Colors.white.withOpacity(0.35),
                shape: BoxShape.rectangle,
                borderRadius: new BorderRadius.circular(8.0),
                boxShadow: <BoxShadow>[
                  new BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10.0,
                    offset: new Offset(0.0, 10.0),
                  ),
                ],
              ),
              child: ListView(padding: EdgeInsets.all(4.0), children: <Widget>[
                Text(
                  "لو عايز تبعتلنا سؤال أو إقتراح أو تعليق إتأكد إنك فاتح النت .. واكتبلنا رسالة هنا",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20.0),
                ),
                TextField(
                  controller: controller,
                  autofocus: true,
                  keyboardType: TextInputType.multiline,
                  maxLines: 2,
                  textAlign: TextAlign.right,

                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey.withOpacity(0.5),
                      hintText: 'إكتب هنا'),
                ),
                Container(height: 20.0,),
                getMyEmailer(context)
              ]))
        ]));
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  dialog(s) {
    return showDialog<Null>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return new AlertDialog(
          title: Center(child: new Text('تنبيه',textAlign: TextAlign.right,textDirection: TextDirection.rtl,style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.w700),)),
          content: new SingleChildScrollView(
            child: new ListBody(
              children: <Widget>[
                Text(s,textAlign: TextAlign.right,style: TextStyle(fontSize: 15.0),),
              ],
            ),
          ),
          actions: <Widget>[
            Center(
              child: new FlatButton(
                color: Colors.grey.withOpacity(0.5),
                splashColor: Colors.white,
                child: new Text('تمام',style: TextStyle(color: Colors.black),),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
          ],
        );
      },
    );
  }

  done(context) {
    Navigator.pop(context);dialog("الرسالة وصلت");
  }

  notdone(context) {
    Navigator.pop(context);dialog("إتأكد أنك فاتح النت");
  }

  dialog_not(String s) {
    return showDialog<Null>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return new AlertDialog(
          title: Center(child: new Text('تنبيه',textAlign: TextAlign.right,textDirection: TextDirection.rtl,style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.w700),)),
          content: new SingleChildScrollView(
            child: new ListBody(
              children: <Widget>[
                Text(s,textAlign: TextAlign.right,style: TextStyle(fontSize: 15.0),),
              ],
            ),
          ),
        );
      },
    );
  }

}