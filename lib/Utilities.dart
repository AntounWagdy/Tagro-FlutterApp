import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'AboutUs.dart';
import 'BernamegHome.dart';
import 'SendEmail.dart';
import 'Taranem.dart';
import 'Videos.dart';
import 'werash_prepare_screen.dart';

class Utitlies {
  Image bg;
  Image SSLogo;
  Image logo;
  Image B1;
  Image B2;
  Image B3;
  Image B4;
  Image B5;
  Image B6;
  Image B7;
  Image ebda2;
  Image HPfooter;
  Image Arrow;
  Image fasel;
  Image BernamegBG;
  Image DayOneBG;
  Image header;
  Image footer;
  String ya_man;
  String fe_wasat;
  String hayso;
  String Sabet_Anzarak;
  String aty_elek;
  String She3ar;
  String salamto;
  String saqolat;
  String elahna_eltayeb;
  String lames;
  String klma;
  String klma_end;
  String E3zef;
  String Almny_Akon_sora;
  String elta3aba;
  String Gayeen;
  Color ThemeColor;
  Color ThemeColor2;
  SharedPreferences sp;
  String hayaty;
  List<String> werash_List; // id, content
  Utitlies(){
    werash_List = new List();
    She3ar = "(في كل صباحٍ أنصت لوعدك\nفي كل مساءٍ أجد مراحمك)2\nتشدد عظامي تقوي يدي ترفع نفسي من كل أنين\n(وتمسح عيني من الدموع\nلأنك أنت مخلصي)2\nلأنك أنت مخلصي\n";
    aty_elek = "†اَتى إليك يا يسوعى أنت المريح\nاَتى إليك بدموعى وبقلب جريح\n(القرار) اَتى إليك\n		\nأنا اَتى إليك أنا اَتى إليك\nوأنا لى مين غيرك .. أروح لمين غيرك\n\n†اتى إليك يا حبيبى يا أعز حبيب\nآتى إليك بذنوبى عند الصليب\n\n†اَتى إليك يا راعى فى كل الظروف\nإن سرت حتى فى الوادى لا يوجد خوف\n\n†اتى إليك فكرسنى وأمسح شفتاى\nوإملانى بروح الطاعة وقد خطاى\n\n†اَتى إليك فأحمينى من\nكل ذات\nاَتى إليك فأرفعنى فوق الضعفات";
    Sabet_Anzarak = "1-ثبت أنظارك فيه و حمولك سبها عليه \nو في وادي ظل الموت إرفع عينك تلاقيه\n2-إن كنت سمعت نداه ع الماية مشيت وياه\nليه تتلفت حواليك عينك خليها عليه\n3-إن شفت بعينك نار صدق يطفيها البار\nوجواها هيمشيك زي الفتيان حواليه\n4-إن كنت في شدة و ضيق و إن فاتك أعز صديق\nفي واحد إسمه يسوع ماسك إيدك في إيديه";
    hayso = "+(حيث قادني أسير)3 أمشى معه دومًا كل حين\n+(ولو قادني للصلب )3 أمشى معه دومًا كل حين\n+(إن في حرب أو سلام)3 أمشى معه دومًا كل حين\n+(إن في شدة أو ضيق)3 أمشى معه دومًا كل حين\n+(إن في صحة أم سقام)3 أمشى معه دومًا كل حين\n+(ربي اجذبني وراك)3 أمشى معه دومًا كل حين";
    fe_wasat = "1- في وسط هموم الحياة حبك لي يصون عايش بانعم بالنجاة والإيد الحنون\nالقرار- تجرح أيوه لكن تعصب تسحق ويداك تشفيان\nتفرح لما المؤمن يغلب وتعزيه عند الأحزان\n2- في وسط البرية دايماً نفسي بتعطش ليك قلبي يفرح بيك هيمان تمسكني إيديك\n3- في وسط شرور الأنام بافتكر اللي هانوك يمكن قالوا علي كلام لكن إنت صلبوك\n";
    ya_man = "+يا من بحضوره نفسي تطيب\nومن يوم ضيقي ادعوه\n\nنهار تعزي بالليل رقيب\nخلاصي من كل الوجوه\n\n+في أي المراعي أربضت الغنم\nيا راعي النفوس المريح\n\nلماذا أهيم في وادي الألم\nكضال في قفر فسيح\n\n+لماذا أطوف كأني غريب يلتمس عونًا من قفر\n\nأعداؤك شمتوا بي يا حبيب\nإذ رأوا دموعي كالنهر\n\n+بنات صهيون خبرنني هل\nرأيتن نجم إسرائيل\n\nهل بين الخيام كان ورحل\nوأين إليه السبيل\n\n+إن يشرف ألوف الأملاك تسجد\nوالآلاف الأخرى تخدم\n\nإن يقل يردد صداه الأبد\nبتسبيح شكر يدوم\n\n+راعي العزيز نفسي تتبعك\nما أعذب صوتك لي\n\nدربني أرشدني أنت الكل لي\nيا نفسي له هللي";
    salamto = "† سلمت نفسي في يديك يا سيدي يسوع\nقدني فتكلاني عليك كي أخدم الجموع\nكن حارسي من الضلال ،كن مرشدي في كل حال\nالقلب قدس والفعال حتى أرى يسوع\n\nالقرار : قد قلت قبل الأن يا منبع الإحسان ، يا متعب القلب تعال أمكث معي حتى تنال\nهيا ففي قربي المنال للخير في يسوع\n\n† إن نغصت عيشي الهموم وإن دانا الظلام \nستنجلي كل الغيوم من مانح السلام\nالرب حصني والأمل ، والرب إن قال فعل \nوالحب فية مكتمل لذا أرى يسوع\n\n† ربي إمتلكني وإهديني للخير يا منان \nأدعوك فاسمع وأرويني من نبعك الملآن\nكي ما أعود من جديد أسعى وأطلب المزيد\nمن نعمة العهد الجديد حتى أرى يسوع\n\n† وحينما يدنو الختام وتنتهي الأيام \nيقودني رب الأنام في موكب السلام\nويمسح الدمع الصبيب ويسعد القلب الكآيب\nإذ حبه لي في الصليب وبري في يسوع";
    saqolat = "* ثقلت حمولى يا سيدى المسيح \nأسألك قبولى حتى استريح \n\nالقرار: من أعماق قلبى أنا أناديك \nفلك حبى ياربى أهديك\n\n* أجرى إليك التجئ يا يسوع \nعلى قدميك أذرف الدموع\n\n*أشرق بشمسك فى فجر جديد \nإغسلنى بدمك إجعلنى سعيد ";
    elahna_eltayeb = "* (دايماً اللي بنحسبة شر يثبت لما الوقت يمر\nإنه لخيرنا ولتبريرنا عمر إلهنا ماراد بالمر )2\n(إمتى تركنا إمتى ناسانا دي عصايته عنيه حارسنا\nبالبركات عمال يملانا بمحبة بتفيض وتسر )2\n\nالقرار : (شكراً ليك يا إلهنا الطيب على كل الأحوال\nعلى الأحزان قبل الأفراح عل الفقر أو المال )2\n(شكراً ليك على عطاياك يا حنين كل الأوقات \nدي شعور رؤوسنا اللي بتسقط بتكون بإذنك ورضاك )2\n\n* (دايماً نظرتنا المحدودة بتنسينا إيدين ممدودة \nبتقوي وتداوي وتسند وبتفتح أبواب مسدودة )2\n(إمتى إلهنا تركنا حيارا أبداً لازم يدي إشارة\nقائد مركبنا بمهارة وبرحمة وبعدل وبر)2";
    lames = "ق: لامس قلبي وكل الروح وإشتياقاتى فين بتروح\nعارف دقة قلبي وحبي وياك مش ممكن أبات مجروح\nوياك مش ممكن أبات مجروح\n\n\n1-إمتى هتيجى وتفرحنى وتخلى حنانك يجرحنى\nوأحس بضيق وارفع عينى واشوف الحب اللى بيسبينى\nوعالعالم ده بيعلينى\n\n\n2-وقت الضيقة أفتكرك ناسي والخوف يتملك إحساسي\nإمحى بحور ظنون وشرور وإسمع ندا قلبي المكسور\nقول كلمة فيكون النور\n\n\n3-املا كل لحظة فى يومى إروينى فى صحيانى ونومى\nعيش من تانى جوة كيانى سيب غيرى يتمنى أمانى\nأما انا أحضانك دى أمانى";
    klma = "إخواتنا الخدام الأعزاء\n نعمه لكم و سلام من ملك السلام الذي يعزينا في كل ضيقاتنا و لتكثر لكم التعزيه السمائيه.\n\nفي وسط عالم تكثر فيه الضيقات و الآلام نجد أمامنا أقدم أسفار الكتاب المقدس سفر أيوب الذي يعالج مشكله الآلم و يفتح أمام كل متألم يائس باباً مفتوحاً في السماء يهب رجاء لنا وسط الضيق حتي لا يختلط فكر العالم بالفكر المسيحي و نتعثر بالضيقات \nو يضطرب رجاؤنا و تضيق علاقتنا بالله و نري في كثره النكبات عقاب من الله، فكان علينا ان ندرس بإيجاز هذا السفرالشعري الذي يُعلن محبه و تقدير الله للإنسان و يتحقق ما قيل:\n\"انت الذي أريتنا ضيقات كثيره و رديئه تعود فتحيينا و من اعماق الأرض تعود فتصعدنا\" (مز20:71 )\n\nومؤتمر هذا العام هو دراسة مبسطه بوجه عام علي كل أحداث السفر راجيين أن يبارك الله العمل ويثمر فينا بالصبر والرجاء في يد الله التي تضبط كل أمورنا وتصنع أكثر مما نفهم لأجل حياتنا الأبديه ونصلي أن يعوض تعب كل من شارك بالخدمه من إعداد وترتيب وتقديم في المؤتمر";
    klma_end = "الرب معكم\nطاجرو 2019";
    hayaty = " حياتى تشبه قيثارة يعزفها لى الرب بمهارة\nتارة تعزف أحزاناً وتارة تعزف انتصاراً\nأما أنا فصلاة فأنت لى النجاة\nنطق اسمك الحياة هو لذة الشفاه\n\n1- إليك النفس أرفع فبنور وجهك أسطع\nوسروراً منك أسمع يا قوتى أحبك\nيارب أقبل صلاتى أنت حصن حياتى\nقوتى أنت ونجاتى أنا لك لروحك\n\n2 -من هول موج البحار اعنتنى من الأخطار\nأعطيتنى كل انتصار يا قوتى أحبك\nيا سهم طائر فى النهار تربص بى الأشرار\nأنقذنى صليبك أنا لك لروحك\n\n3 - أنت يارب كنت معنا عند قيام الناس علينا\nيمينك تعطى أماناً يا قوتى أحبك\nشوق الأيائل للمياة كعطشى لك يا إلهى\nأنت خلاصى ورجائى أنا لك لروحك";
    E3zef = "اعزف بحياتك لحن جميل  خليك ذكرى خليك فكرى\n او حتى دليل خليك شمعة تنور فترة بس بصدق\n بدون تضليل:) \nحتى ان كانت قاسية وصعبة هى حياة والكل نزيل\n عيشها وسيب الحانك فيها بكرة نكون فاكرينك بيها\n \” ذكرى الصديق فرحة وتهليل \”\n";
    Almny_Akon_sora = "علمني يا رب أكون صورة تعكس للعالم نورك \nبتداوي الناس المكسورة و ترجعهم لحصونك \nعلمني ازاي اكون خادم و ازاي اجذب ملايين\nعلمني أوصل الكلمة و ازاي أغسل رجلين \nعلمني ان انت اللي بتخدم و اني مجرد انسان \nمهما هيعمل جوة الخدمة يختفي و انت هتبان \nعلمني ازاي وقت سكوتك قلبي يكون واثق فيك \n(و ازاي يا رب تكون خدمتي بما يليق )2\n";
    elta3aba = "صوته لسة بينده من سنين تعالوا الى يا كل المتعبين \nلو تعبان عنده الشفاء لاى جرح واى داء وان ضاع حلمك يوم وتاه هتلاقى نجاه\nلو يأسان من نفسك روح قوله يا ابويا انا عندى جروح مستنيك تيجى وبالروح تدينى حياه\n\nهو مريح التعابى والناس الغلابه بيحول الكابه لاغانى وافراح\n\nصوته لسه بينده من زمان مين محتاج لسلام محتاج لامان\nلو تايه مش لاقى طريق كل حياتك هم و ضيق وسط بحور الدنيا غريق فى تعب و سراب\nلو بتدور من سنين على افراح بدل الانين لو نفسك متكونش حزين افتحلوا الباب\n\nهو مريح التعابى والناس الغلابه بيحول الكابه لاغانى وافراح";
    Gayeen = "1- جايين يا أبانا اسمع لدعانا. بتواضع يرجع شعبك  يطلب رحمة من عندك. بقلوب محتاجة إليك\n\n \n\nق: دا رجانا فيك يا إلهنا. و هانستني المواعيد\n\nنحوك نرفع أعيننا. و إيماننا فيك بيزيد\n\nبنصدق كل وعودك. أنت في الوعد آمين\n\nتملا حياتنا من جودك.  مجدًا لك يا معين\n\n \n\n2- أرضنا عطشانة بجروح مليانة. من فيض حبك ترويها لمسة أيدك تشفيها. و تردها تاني إليك\n\n \n\n3- بنتوب قدامك بنعود لحنانك. نعلن ملكك في حياتنا في بيوتنا و اجتماعاتنا . و قلوبنا بتسجد لكِ";
    bg = Image.asset("assets/imgs/bg.png",fit: BoxFit.fitHeight,);
    SSLogo = Image.asset("assets/imgs/sslogo.png",fit: BoxFit.fill,);
    logo = Image.asset(
      "assets/imgs/logo.png",
      height: 45.0,
    );
    ThemeColor = Colors.black;
    B1 = Image.asset("assets/imgs/B1.png");
    B2 = Image.asset("assets/imgs/B2.png");
    B3 = Image.asset("assets/imgs/B3.png");
    B4 = Image.asset("assets/imgs/B4.png");
    B5 = Image.asset("assets/imgs/B5.png");
    B6 = Image.asset("assets/imgs/B6.png");
    B7 = Image.asset("assets/imgs/B7.png");
    ebda2 = Image.asset("assets/imgs/start.png");
    HPfooter = Image.asset("assets/imgs/HPFooter.png");
    Arrow = Image.asset("assets/imgs/Arrow.png",width: 70,height: 70,);
    fasel = Image.asset("assets/imgs/fasel.png",height: 20,);
    BernamegBG = Image.asset("assets/imgs/BernamegBG.png");
    DayOneBG = Image.asset("assets/imgs/DayOneBG.png",);
    header = Image.asset("assets/imgs/header.png",);
    footer = Image.asset("assets/imgs/footer.png",);
    ThemeColor2 = Color.fromRGBO(244, 209, 157, 0.75);

  }

  AppBar MyAppBar(title, size, context) {
    if (size == 0) size = 1.25;
    var width = MediaQuery.of(context).size.width;
    var check = Navigator.canPop(context) &&
        Theme.of(context).platform == TargetPlatform.iOS;
    return AppBar(
      backgroundColor: ThemeColor,
      centerTitle: true,
      title: Table(
        columnWidths: <int, TableColumnWidth>{
          0: FixedColumnWidth(
              Navigator.canPop(context) ? 50 / 360 * width : 0.0),
          1: FixedColumnWidth(200.0 / 360 * width),
          2: FixedColumnWidth(80.0 / 360 * width),
        },
        children: [
          TableRow(children: [
            check
                ? Container(
                    alignment: Alignment.centerLeft,
                    child: new IconButton(
                      icon: new Icon(Icons.arrow_back_ios),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  )
                : Container(),

            Container(
              alignment: (!Navigator.canPop(context) ||
                      Theme.of(context).platform == TargetPlatform.iOS)
                  ? Alignment.center
                  : Alignment.centerRight,
              child: Text(
                title,
                textScaleFactor: size,
              ),
              padding: EdgeInsets.only(top: 4.0),
            ),
            // only(left)
            Container(alignment: Alignment.centerRight, child: logo),
          ])
        ],
      ),
    );
  }


  GetChild(x) {
    return Container(
      color: Colors.white.withOpacity(0.2),
      height: 50.0,
      alignment: Alignment(1.0, 0.0),
      padding: EdgeInsets.all(8.0),
      child: Text(
        x,
        style: TextStyle(color: Colors.white, fontSize: 20.0),
      ),
    );
  }

  MyDrawer(h, context) {
    return Drawer(
        child: Container(
          decoration: new BoxDecoration(
            border:
            new Border.all(color: Colors.black.withOpacity(0.5), width: 2.0),
            color: ThemeColor,
          ),
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              Container(
                height: 50.0,
                color:ThemeColor,
                alignment: Alignment(1.0, 1.0),
                child: Text(
                  "مؤتمر طاجرو",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 15.0),
                ),
              ),
              GestureDetector(
                child: GetChild("البرنامج"),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => BernamegHome()));
                },
              ),
              Container(
                color: Colors.black,
                height: 2.0,
              ),
              GestureDetector(
                child: GetChild("الترانيم"),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Taranem()));
                },
              ),
              Container(
                color: Colors.black,
                height: 2.0,
              ),
              GestureDetector(
                child: GetChild("الفيديوهات"),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Videos()));
                },
              ),
              Container(
                color: Colors.black,
                height: 2.0,
              ),
              GestureDetector(
                child: GetChild("الورش"),
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => werash_prepare_screen()));
                },
              ),
              Container(
                color: Colors.black,
                height: 2.0,
              ),
              GestureDetector(
                child: GetChild("بريد الخدام"),
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => SendEmail()));
                },
              ),
            ],
          ),
        ));
  }

}

Utitlies utils;