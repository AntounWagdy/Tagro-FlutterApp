import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:googleapis/drive/v3.dart' as drive;
import 'package:googleapis_auth/auth_io.dart';
import 'package:path_provider/path_provider.dart';

import 'werash.dart';
import 'Utilities.dart';

class werash_prepare_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    this.con = context;
    return builder(context);
  }

  String appDocPath;

  Widget builder(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        //backgroundColor: utils.ThemeColor2,
        body: Center(
          child: Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(
                  image: new AssetImage("assets/imgs/bg.png"),
                  fit: BoxFit.cover),
            ),
            child: SpinKitPouringHourglass(
              color: Colors.black,
              size: 75,
            ),
          ),
        ),
      ),
    );
  }

  final _credentials = new ServiceAccountCredentials.fromJson(r'''
    {
      "type": "service_account",
      "project_id": "tagro-247612",
      "private_key_id": "0827d6c4dd481a1abf54654c74eb7621e7be8510",
      "private_key": "-----BEGIN PRIVATE KEY-----\nMIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQClRRuXmdVlHAUg\nZ79OV2hp+gxsA/HrLUWRO5mbqzAPe77jDwLo2Po1F/Fi5LDIJIPcsPp6ZoKW29lk\nz+/CcUwo7MlD7Y1Ag/NlGC6+LFLCXRHEoT5MYt2nOEvF67ftyQfp8u09ezT+lWC5\nkcwKADChfqjR77p86GDKgP7cLyx7vI3k+TAATjfW30E07gaUZJny3jRIRZyliAYo\nv1X0XNMqbNSvMHYIRWf68eSqtv/rKIp/tTQjdWE3+k2udd8o704YxuOpc/Lgkqfa\nhG2cE/BMAe36c7DrZ5FFm57SIUi+dlMvmcHI/6ENUEYQ6+pjrtwkb6gGtB+sBWJM\nSiOGadGHAgMBAAECggEAF7asSFri0yCrnaQ1P2zsRvSBbsg8IIX86uNV3Y+5FCep\n0pOXU8i6Uf7u/EUbFoSixPpB3mkyCKpf7YamfMxb5K1hDZWaxGyKcnF/V3stnsTS\n5VdLhJNVAYbi3HG/kOdc8tUP9Ffm2Taey9GfKLoxQCLX31OZ+w0uwi+zIe3E4LYI\nt2tJZKS3GxsNOoRlKZPDQjbj6cKpfX6ZszzxdVl7N85ic8ERJ5dbIO1u4ytktLyL\nYyXAmUtLNnTCndW2rwHvBYHpqy+yxDkeLNve9CI4SrnsE7pJT6MOdm7eTU5ZphjG\ndrruQQFCffQpo+klG5efuU40MWrAqOoAnmdZcb66YQKBgQDaAg6hgLhSLOiB+bX0\nzO770ddwkbsuHrSkMWUe5ueUDz6pAjv5Fj9g5c+BOaavQisJRTbnmumxt1ca71lZ\nX9NL5+pvnjfMjfhbQUWppdW49P2W6k+05EPA4uGddpafg+AriLKEIXu0VgGhzD7W\nRRzftK11BAz3RuLAOv/Mq3FzZwKBgQDCEkIukDBtRWT7KbJzGviHP3jpLsJsq9IO\nmO+dT6sNfxNgEHG77+1Q5HhMa8nLgSQozM3vj/6LBAHXFL+zwr/a1x6MUy2BKElM\nGHmPg9D0fjonS2yhY1LarTPCALfzAdAq2cKqe9ISK5p/n3XF0SccKv4zZt2af+Db\n9jQWftb84QKBgFKQPOJFUYktoNC4tYSEqG2ORz1Gs9D/qAIXAuj1Ifcc3uo7AmOP\nXWlhH3kdUFdHg+z63ZRRQvgfK0n0I66JcAhrSIoFLbS2f7xvt+ZL++kUP4YMLyue\n11oRksiDxP+cfiV+m70WwTbG689O/u0/N3QxhQ+v/QkZO3752S62Lz05AoGAI+6J\nfmGH9dNRXQddWN53gWMJGfNkYAZ3/+flBXVIsFkE11Z0GF3VzJJgi5WxaRJiBYPV\n5TL95/M3/ACFddzq9LO7njOQS0eQOpyVdTLsrzfnwHrAhCkFoCNNX/AOHtoJFsX2\nuuXuARs9ob9+aL/Ow/JZ2l6DTSW8Fj3BayDU4UECgYEA0hJ1I/Iy1evNiUV+rbdc\nWJdFKDsvRMqPyoN/RpfyvxC4jqxrfJkA9cDLofsNnjYrbRr4OSgMbFQE6/gnBrb5\nB/eEsUBri0vboxRSeit7EVL5TtAcoAhVAj1bjZtfCe+tnZYxyhRkAQEtttd33SMn\nuadAlqORTDkFFK2+j2aMF5o=\n-----END PRIVATE KEY-----\n",
      "client_email": "getdrivefiles@tagro-247612.iam.gserviceaccount.com",
      "client_id": "113054284483703247877",
      "auth_uri": "https://accounts.google.com/o/oauth2/auth",
      "token_uri": "https://oauth2.googleapis.com/token",
      "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
      "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/getdrivefiles%40tagro-247612.iam.gserviceaccount.com"  
    }

    ''');
  final _SCOPES = [drive.DriveApi.DriveScope];

  Future<void> handleDriveData() async {
    if (this.appDocPath == null) {
      this.appDocPath = (await getApplicationDocumentsDirectory()).path;
    }
    AuthClient _client = await clientViaServiceAccount(
        _credentials, _SCOPES); //.then(onValue).catchError((e)=>print(e));

    // get fileList
    drive.FileList fileList = await drive.DriveApi(_client)
        .files
        .list(q: "'1IVh65cAlXCSs4d4Ms4xTGT-8GnrFuxvK' in parents");

    var DownloadsDirectory = new Directory(this.appDocPath);
    List<FileSystemEntity> c =
        await DownloadsDirectory.list(recursive: false, followLinks: false)
            .toList();
    for (int i = 0; i < c.length; i++) {
      if (!c[i].path.contains(".rtf_tagro")) c.removeAt(i);
    }
    for (int i = 0; i < fileList.files.length; i++) {
      if (!Has(c, fileList.files[i].id))
        await DownloadFile(_client, fileList.files[i].id);
    }
  }

  Future<void> DownloadFile(_client, id) async {
    drive.Media media = (await drive.DriveApi(_client).files.get(id,
        downloadOptions: drive.DownloadOptions.FullMedia)) as drive.Media;
    File download = new File(appDocPath + "/" + id + ".rtf_tagro");
    List<int> data = new List();
    List<List<int>> dataList = await media.stream.toList();
    for (int i = 0; i < dataList.length; i++) {
      data.addAll(dataList[i]);
    }
    await download.writeAsBytes(data);
    print("Download: " + download.path + " has been downloaded");
  }

  bool Has(List<FileSystemEntity> e, String id) {
    for (int i = 0; i < e.length; i++) {
      if (e[i].path.contains(id)) return true;
    }
    return false;
  }

  Future<void> ReadAllFiles() async {
    if (this.appDocPath == null) {
      this.appDocPath = (await getApplicationDocumentsDirectory()).path;
    }
    var DownloadsDirectory = new Directory(this.appDocPath);
    List<FileSystemEntity> c =
        await DownloadsDirectory.list(recursive: false, followLinks: false)
            .toList();

    for (int i = 0; i < c.length; i++) {
      print(c[i].path);
      if (!c[i].path.contains(".rtf_tagro"))
        c.removeAt(i--);
    }
    print(c.length.toString()+" should be added now");
    // read all files in c
    File read;
    for (int i = 0; i < c.length; i++) {
      read = new File(c[i].path);
      String content = await read.readAsString();
      print("element "+ c[i].path+" has been added");
      utils.werash_List.add(content);
    }
  }

  Future<void> PrepareData() async {
    utils.werash_List.clear();
    try {
      await handleDriveData();
    }catch(d){
      print(d);
    } finally {
      await ReadAllFiles();
      print("here: "+utils.werash_List.length.toString());
      Navigator.of(this.con).pop();
      Navigator.of(this.con)
          .push(MaterialPageRoute(builder: (con) => werash()));
    }
  }
  BuildContext con;
  werash_prepare_screen(){
    PrepareData();
  }

//run-as wagdy.antoun.tagro
  //cp /data/user/0/wagdy.antoun.tagro/app_flutter/file.txt /storage/emulated/0/
}
