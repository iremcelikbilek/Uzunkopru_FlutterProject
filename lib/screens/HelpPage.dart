import 'package:flutter/material.dart';

class HelpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage("assets/images/app_common_background4.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SafeArea(child: buildHelpPage()),
        ],
      ),
    );
  }

  Widget buildHelpPage() {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            color: Colors.transparent,
            margin: EdgeInsets.only(right: 10, left: 10, top: 10),
            child: Expanded(
                child: Image.asset(
                    "assets/images/how_to_play_activity_header.png")),
          ),
          Expanded(
            flex: 8,
            child: ListView(
              children: <Widget>[
                Card(
                  margin: EdgeInsets.all(20),
                  elevation: 20,
                  color: Colors.blueAccent.withAlpha(170),
                  child: ListTile(
                    contentPadding: EdgeInsets.all(15),
                    dense: true,
                    leading: CircleAvatar(
                      backgroundColor: Colors.blueAccent.shade100,
                      child: Text(
                        "1",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                    ),
                    title: Text(
                      "Oyun",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ),
                    subtitle: Text(
                      "Uzunköprü'yü tanıyalım oyunu 5 kategoriden oluşmaktadır. Seviye 1 ile oyuna başla ve "
                      "Uzunköprü'yü ne kadar tanıdığını gör! Yarışma kurallarını hatırla ve hemen yarışmaya başla! "
                      "Başarılarını Facebook üzerinden paylaşmayı unutma!",
                      style: TextStyle(color: Colors.white, fontSize: 19),
                    ),
                  ),
                ),
                Card(
                  margin: EdgeInsets.all(20),
                  elevation: 20,
                  color: Colors.redAccent.withAlpha(170),
                  child: ListTile(
                    contentPadding: EdgeInsets.all(15),
                    dense: true,
                    leading: CircleAvatar(
                      backgroundColor: Colors.redAccent.shade100,
                      child: Text(
                        "2",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                    ),
                    title: Text(
                      "Sorular",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ),
                    subtitle: Text(
                      "Her bir soru için 30 saniye süren var! Joker kullanmadan doğru cevapladığın "
                      "her soru için 10 puan kazanırken, her bir joker kullanımın kazanacağın puandan 5 "
                      "eksiltecektir.",
                      style: TextStyle(color: Colors.white, fontSize: 19),
                    ),
                  ),
                ),
                Card(
                  margin: EdgeInsets.all(20),
                  elevation: 20,
                  color: Colors.orangeAccent.withAlpha(170),
                  child: ListTile(
                    contentPadding: EdgeInsets.all(15),
                    dense: true,
                    leading: CircleAvatar(
                      backgroundColor: Colors.orangeAccent.shade100,
                      child: Text(
                        "3",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                    ),
                    title: Text(
                      "Jokerler",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ),
                    subtitle: Text(
                      "Her seviyeyi tamamladığında birer joker kazanırsın. %50 joker ile "
                      "doğru cevabı bulma şansını arttırabilir, ek süre jokeri ile süreni "
                      "30 saniye uzatabilirsin.",
                      style: TextStyle(color: Colors.white, fontSize: 19),
                    ),
                  ),
                ),
                Card(
                  margin: EdgeInsets.all(20),
                  elevation: 20,
                  color: Colors.purpleAccent.withAlpha(170),
                  child: ListTile(
                    contentPadding: EdgeInsets.all(15),
                    dense: true,
                    leading: CircleAvatar(
                      backgroundColor: Colors.purpleAccent.shade100,
                      child: Text(
                        "4",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                    ),
                    title: Text(
                      "Seviye Tamamla",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ),
                    subtitle: Text(
                      "Bir sonraki seviyeye geçebilmek için o kategoride 70 veya üzeri bir puan almalısın! "
                      "Ayrıca her seviye tamamlandığında o kategori ile ilgili açılan bilgilere ulaşacaksın. "
                      "Başarısız olursan üzülme, başarana kadar tekrar yarışabilirsin. :) ",
                      style: TextStyle(color: Colors.white, fontSize: 19),
                    ),
                  ),
                ),
                Card(
                  margin: EdgeInsets.all(20),
                  elevation: 20,
                  color: Colors.green.withAlpha(170),
                  child: ListTile(
                    contentPadding: EdgeInsets.all(15),
                    dense: true,
                    leading: CircleAvatar(
                      backgroundColor: Colors.green.shade300,
                      child: Text(
                        "5",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                    ),
                    title: Text(
                      "Facebook'ta Paylaş",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ),
                    subtitle: Text(
                      "Profil ayarlarında Facebook hesabın ile bağlan! Böylece başarılarını ve "
                      "başarıların sonucu açılan bilgileri arkadaşların ile paylaşabilirsin. Arkadaşlarına Uzunköprü'yü "
                      "ne kadar iyi bildiğini göster !",
                      style: TextStyle(color: Colors.white, fontSize: 19),
                    ),
                  ),
                ),
              ],
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
}
