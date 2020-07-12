import 'package:beyazadokunma/anaSayfa.dart';
import 'package:beyazadokunma/anaSayfaZamanaKarsi.dart';
import 'package:flutter/material.dart';

class KarsilamaEkrani extends StatefulWidget {
  @override
  _KarsilamaEkraniState createState() => _KarsilamaEkraniState();
}

class _KarsilamaEkraniState extends State<KarsilamaEkrani> {
  int score = 0;
  double screenSize;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Karşılama Ekranı'),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Text('Rekor: '),
                Text('En Son Skor: $score'),
              ],
            ),
            RaisedButton(
              child: Text('Klasik'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => AnaSayfa(),
                  ),
                ).then((gelenDeger) {
                  score = gelenDeger == null ? 0 : gelenDeger;
                  debugPrint('$gelenDeger');
                  setState(() {});
                });
              },
            ),
            RaisedButton(
              child: Text('Zamana Karşı 60sn'),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) =>
                            AnaSayfaZamanaKarsi(60))).then((gelenDeger) {
                              score = gelenDeger;
                              setState(() {
                                
                              });
                            });
              },
            ),
            RaisedButton(
              child: Text('Zamana Karşı 75sn'),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) =>
                            AnaSayfaZamanaKarsi(75))).then((gelenDeger) {
                              score = gelenDeger;
                              setState(() {
                                
                              });
                            });
              },
            ),
            RaisedButton(
              child: Text('Zamana Karşı 90sn'),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) =>
                            AnaSayfaZamanaKarsi(90))).then((gelenDeger) {
                              score = gelenDeger;
                              setState(() {
                                
                              });
                            });
              },
            ),
          ],
        ),
      ),
    );
  }
}

