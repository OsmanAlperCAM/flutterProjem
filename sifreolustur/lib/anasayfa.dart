import 'package:flutter/material.dart';
import 'package:sifreolustur/listeler.dart';
import 'package:clippy/browser.dart' as clippy;
import 'package:spinner_input/spinner_input.dart';
import 'dart:math';

class AnaSayfa extends StatefulWidget {
  @override
  _AnaSayfaState createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  bool buyukHarf = false;
  bool kucukHarf = false;
  bool sayilar = false;
  bool noktalamaIsaretleri = false;

  String secimDegeri = "0";
  String olusturulanSifre = "";

  double karakterUzunlugu = 3;

  List karakterSeti = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Osman Alper ÇAM\nŞifre Oluştur'),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RawChip(
                  selectedColor: Colors.orange,
                  label: Text('Şifrede Küçük Harfler Olsun'),
                  selected: kucukHarf,
                  onPressed: () {
                    if (kucukHarf == false) {
                      kucukHarf = true;
                    } else {
                      kucukHarf = false;
                    }
                    setState(() {});
                  },
                ),
                RawChip(
                  selectedColor: Colors.orange,
                  label: Text('Şifrede Büyük Harfler Olsun'),
                  selected: buyukHarf,
                  onPressed: () {
                    if (buyukHarf == false) {
                      buyukHarf = true;
                    } else {
                      buyukHarf = false;
                    }
                    setState(() {});
                  },
                ),
                RawChip(
                  selectedColor: Colors.orange,
                  label: Text('Şifrede Sayılar Olsun'),
                  selected: sayilar,
                  onPressed: () {
                    if (sayilar == false) {
                      sayilar = true;
                    } else {
                      sayilar = false;
                    }
                    setState(() {});
                  },
                ),
                RawChip(
                  selectedColor: Colors.orange,
                  label: Text('Şifrede Noktalama İşaretleri Olsun'),
                  selected: noktalamaIsaretleri,
                  onPressed: () {
                    if (noktalamaIsaretleri == false) {
                      noktalamaIsaretleri = true;
                    } else {
                      noktalamaIsaretleri = false;
                    }
                    setState(() {});
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Şifre Uzunluğunu Seçin'),
                Container(
                  margin: EdgeInsets.all(20),
                  child: SpinnerInput(
                    spinnerValue: karakterUzunlugu,
                    minValue: 3,
                    maxValue: 20,
                    onChange: (deger) {
                      setState(() {
                        karakterUzunlugu = deger;
                      });
                    },
                  ),
                ),
              ],
            ),
            RaisedButton(
              child: Text('Oluştur'),
              onPressed: () {
                karakterSeti = [];
                olusturulanSifre = '';
                if (buyukHarf == true) {
                  for (int i = 0; i < buyukHarflerListesi.length; i++) {
                    karakterSeti.add(buyukHarflerListesi[i]);
                  }
                }
                if (kucukHarf == true) {
                  for (int i = 0; i < kucukHarflerListesi.length; i++) {
                    karakterSeti.add(kucukHarflerListesi[i]);
                  }
                }
                if (sayilar == true) {
                  for (int i = 0; i < sayilarListesi.length; i++) {
                    karakterSeti.add(sayilarListesi[i]);
                  }
                }
                if (noktalamaIsaretleri == true) {
                  for (int i = 0; i < noktalamaIsaretleriListesi.length; i++) {
                    karakterSeti.add(noktalamaIsaretleriListesi[i]);
                  }
                }
                while (olusturulanSifre.length < karakterUzunlugu) {
                  Random rnd;
                  int min = 0;
                  int max = karakterSeti.length - 1;
                  rnd = new Random();
                  int r = min + rnd.nextInt(max - min);
                  olusturulanSifre = olusturulanSifre + karakterSeti[r];
                }
                setState(() {});
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(olusturulanSifre.length < 3 ? 'Henüz Şifre Oluşturulmadı' : olusturulanSifre,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton(
                    child: Text('Kopyala'),
                    onPressed: (){
                    clippy.write(olusturulanSifre);
                  }),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
