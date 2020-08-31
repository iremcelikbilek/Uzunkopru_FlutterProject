import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SafeArea(child: buildAboutPage(context)),
    );
  }
}

Widget buildAboutPage(BuildContext context) {
  return Container(
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage("assets/images/notification_bakcground.png"),
        fit: BoxFit.cover,
      ),
    ),
    child: Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(right: 10, left: 10),
          child: Expanded(child: Image.asset("assets/images/about_header.png")),
        ),
        Expanded(
          flex: 8,
          child: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.all(25),
              child: Text(
                "\"İKİ YAKA BİR UZUNKÖPRÜ\" adını verdiğimiz mobil android programı Uzunköprü İlçe Milli Eğitim Müdürlüğü tarafından hazırlanmıştır. \n\nTeknoloji kullanımının "
                "hızla artığı günümüzde geleceğimiz olan çocuklarımızın teknoloji kullanımı artmaktadır. Günlük yaşamlarının önemli bölümünde yer tutan teknolojik araçların"
                " zaman zaman gereksiz kullanımı söz konusu olabilmektedir. Teknolojinin yarattığı sanal dünyanın bizlere sunduğu faydalı birçok imkan yanında zaman zaman "
                "zararlı yayınlara maruz kalabilmekte ve maalesef zaman içinde çocuklarımız yanlış teknoloji kullanımının bağımlısı haline gelmektedir. \n\nUzunköprü İlçe"
                " Milli Eğitim Müdürlüğü olarak geleceğimiz olan evlatlarımızın hem kendi yaşadıkları şehri yakından tanımaları hem de bunu yaparken onların dünyasına hitap"
                " eden teknolojiyi kullanmalarını amaçladık. Günümüzde her çocuğun kullandığı cep telefonları ve tabletlerinde onlar için faydalı olacağına inandığımız bir "
                "oyun programı geliştirdik. Çocuklarımız cep telefonu ve tabletlerinde geçirdikleri vakit içerisinde yaşadıkları şehri ve çevrelerini yakından tanıma imkanı"
                " bulacaklardır. \n\nUzunköprü Ergene Nehrinin üzerinde kurulan ve UNESCO Geçici Dünya Miras Listesinde yer alan tarihi taş köprümüzün iki yakasında yer"
                " almaktadır. Şehrimizin merkezi tarihi taş köprümüzün bir yakasında yer alırken kent merkezi yine Kırkkavak Deresi ile ikiye bölünmüştür. Böylelikle "
                "Uzunköprü her halükarda İki Yakadan Bir olmaktadır. \nAndroid programımızın başta Uzunköprülü olmak üzere tüm çocuklarımıza hayırlı olmasını diler, "
                "emeği geçen arkadaşlarımıza teşekkür ederim. \n\nEralp AKMAN \nUzunköprü İlçe Milli Eğitim Müdürü",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ),
        Divider(
          color: Colors.black12,
          thickness: 3,
        ),
        Expanded(
          child: Image.asset("assets/images/mainactivity_footer.png"),
        ),
      ],
    ),
  );
}
