import 'dart:math';

import 'package:flutter/material.dart';

class AnaSayfa extends StatefulWidget {



  @override
  _AnaSayfaState createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  double containerBoyutX;
  double containerBoyutY;
  double pozisyonBaslangic;
  double pozisyonArtir;
  int score = 0;

  double pozisyon0;
  double pozisyon1;
  double pozisyon2;
  double pozisyon3;
  double pozisyon4;
  double pozisyon5;
  double pozisyon6;
  double pozisyon7;
  double pozisyon8;
  double pozisyon9;

  Random random = new Random();
  int rastgeleSayi0;
  int rastgeleSayi1;
  int rastgeleSayi2;
  int rastgeleSayi3;
  int rastgeleSayi4;
  int rastgeleSayi5;
  int rastgeleSayi6;
  int rastgeleSayi7;
  int rastgeleSayi8;
  int rastgeleSayi9;

  Color basildiRengi = Colors.green;

  @override
  void initState() {
    super.initState();
    containerBoyutX = 100;
    containerBoyutY = 150;
    pozisyonArtir = containerBoyutY + 1;
    pozisyonBaslangic = 0;
    pozisyon0 = pozisyonBaslangic;
    pozisyon1 = pozisyonBaslangic + pozisyonArtir;
    pozisyon2 = pozisyonBaslangic + pozisyonArtir * 2;
    pozisyon3 = pozisyonBaslangic + pozisyonArtir * 3;
    pozisyon4 = pozisyonBaslangic + pozisyonArtir * 4;
    pozisyon5 = pozisyonBaslangic + pozisyonArtir * 5;
    pozisyon6 = pozisyonBaslangic + pozisyonArtir * 6;
    pozisyon7 = pozisyonBaslangic + pozisyonArtir * 7;
    pozisyon8 = pozisyonBaslangic + pozisyonArtir * 8;
    pozisyon9 = pozisyonBaslangic + pozisyonArtir * 9;
    rastgeleSayi0 = random.nextInt(4);
    rastgeleSayi1 = random.nextInt(4);
    rastgeleSayi2 = random.nextInt(4);
    rastgeleSayi3 = random.nextInt(4);
    rastgeleSayi4 = random.nextInt(4);
    rastgeleSayi5 = random.nextInt(4);
    rastgeleSayi6 = random.nextInt(4);
    rastgeleSayi7 = random.nextInt(4);
    rastgeleSayi8 = random.nextInt(4);
    rastgeleSayi9 = random.nextInt(4);
  }

  void ilerle() {
    pozisyon0 += containerBoyutY + 1;
    pozisyon1 += containerBoyutY + 1;
    pozisyon2 += containerBoyutY + 1;
    pozisyon3 += containerBoyutY + 1;
    pozisyon4 += containerBoyutY + 1;
    pozisyon5 += containerBoyutY + 1;
    pozisyon6 += containerBoyutY + 1;
    pozisyon7 += containerBoyutY + 1;
    pozisyon8 += containerBoyutY + 1;
    pozisyon9 += containerBoyutY + 1;

    if (pozisyon9 >= 909) {
      rastgeleSayi9 = random.nextInt(4);
      pozisyon9 = -1;
      debugPrint('rastgeleSayi5 = $rastgeleSayi5');
      setState(() {});
    } else if (pozisyon8 >= 909) {
      rastgeleSayi8 = random.nextInt(4);
      pozisyon8 = -1;
      debugPrint('rastgeleSayi5 = $rastgeleSayi5');
      setState(() {});
    } else if (pozisyon7 >= 909) {
      rastgeleSayi7 = random.nextInt(4);
      pozisyon7 = -1;
      debugPrint('rastgeleSayi5 = $rastgeleSayi5');
      setState(() {});
    } else if (pozisyon6 >= 909) {
      rastgeleSayi6 = random.nextInt(4);
      pozisyon6 = -1;
      debugPrint('rastgeleSayi5 = $rastgeleSayi5');
      setState(() {});
    } else if (pozisyon5 >= 909) {
      rastgeleSayi5 = random.nextInt(4);
      pozisyon5 = -1;
      debugPrint('rastgeleSayi5 = $rastgeleSayi5');
      setState(() {});
    } else if (pozisyon4 >= 909) {
      rastgeleSayi4 = random.nextInt(4);
      pozisyon4 = -1;
      debugPrint('rastgeleSayi4 = $rastgeleSayi4');
      setState(() {});
    } else if (pozisyon3 >= 909) {
      rastgeleSayi3 = random.nextInt(4);
      pozisyon3 = -1;
      debugPrint('rastgeleSayi3 = $rastgeleSayi3');
      setState(() {});
    } else if (pozisyon2 >= 909) {
      rastgeleSayi2 = random.nextInt(4);
      pozisyon2 = -1;
      debugPrint('rastgeleSayi2 = $rastgeleSayi2');
      setState(() {});
    } else if (pozisyon1 >= 909) {
      rastgeleSayi1 = random.nextInt(4);
      pozisyon1 = -1;
      debugPrint('rastgeleSayi1 = $rastgeleSayi1');
      setState(() {});
    } else if (pozisyon0 >= 909) {
      rastgeleSayi0 = random.nextInt(4);
      pozisyon0 = -1;
      debugPrint('rastgeleSayi0 = $rastgeleSayi0');
      setState(() {});
    } else {
      debugPrint('Problem çıktı');
    }
    score++;
    setState(() {});
  }

  void bitir() {
    Navigator.pop(context, score);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Score $score'),
        centerTitle: true,
        /*actions: <Widget>[
          IconButton(
            icon: Icon(Icons.ac_unit),
            onPressed: ilerle,
          ),
        ],*/
      ),
      body: Container(
        margin: EdgeInsets.fromLTRB(600,0,0,0),
        child: Center(
          child: Stack(
            children: <Widget>[
              Positioned(
                top: pozisyon0,
                child: Row(
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        if (rastgeleSayi0 == 0) {
                          return ilerle();
                        } else {
                          return bitir();
                        }
                      },
                      child: Container(
                        width: containerBoyutX,
                        height: containerBoyutY,
                        margin: EdgeInsets.all(1),
                        color: rastgeleSayi0 == 0 ? Colors.black : Colors.blue,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        if (rastgeleSayi0 == 1) {
                          return ilerle();
                        } else {
                          return bitir();
                        }
                      },
                      child: Container(
                        width: containerBoyutX,
                        height: containerBoyutY,
                        margin: EdgeInsets.all(1),
                        color: rastgeleSayi0 == 1 ? Colors.black : Colors.blue,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        if (rastgeleSayi0 == 2) {
                          return ilerle();
                        } else {
                          return bitir();
                        }
                      },
                      child: Container(
                        width: containerBoyutX,
                        height: containerBoyutY,
                        margin: EdgeInsets.all(1),
                        color: rastgeleSayi0 == 2 ? Colors.black : Colors.blue,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        if (rastgeleSayi0 == 3) {
                          return ilerle();
                        } else {
                          return bitir();
                        }
                      },
                      child: Container(
                        width: containerBoyutX,
                        height: containerBoyutY,
                        margin: EdgeInsets.all(1),
                        color: rastgeleSayi0 == 3 ? Colors.black : Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: pozisyon1,
                child: Row(
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        if (rastgeleSayi1 == 0) {
                          return ilerle();
                        } else {
                          return bitir();
                        }
                      },
                      child: Container(
                        width: containerBoyutX,
                        height: containerBoyutY,
                        margin: EdgeInsets.all(1),
                        color: rastgeleSayi1 == 0 ? Colors.black : Colors.blue,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        if (rastgeleSayi1 == 1) {
                          return ilerle();
                        } else {
                          return bitir();
                        }
                      },
                      child: Container(
                        width: containerBoyutX,
                        height: containerBoyutY,
                        margin: EdgeInsets.all(1),
                        color: rastgeleSayi1 == 1 ? Colors.black : Colors.blue,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        if (rastgeleSayi1 == 2) {
                          return ilerle();
                        } else {
                          return bitir();
                        }
                      },
                      child: Container(
                        width: containerBoyutX,
                        height: containerBoyutY,
                        margin: EdgeInsets.all(1),
                        color: rastgeleSayi1 == 2 ? Colors.black : Colors.blue,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        if (rastgeleSayi1 == 3) {
                          return ilerle();
                        } else {
                          return bitir();
                        }
                      },
                      child: Container(
                        width: containerBoyutX,
                        height: containerBoyutY,
                        margin: EdgeInsets.all(1),
                        color: rastgeleSayi1 == 3 ? Colors.black : Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: pozisyon2,
                child: Row(
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        if (rastgeleSayi2 == 0) {
                          return ilerle();
                        } else {
                          return bitir();
                        }
                      },
                      child: Container(
                        width: containerBoyutX,
                        height: containerBoyutY,
                        margin: EdgeInsets.all(1),
                        color: rastgeleSayi2 == 0 ? Colors.black : Colors.blue,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        if (rastgeleSayi2 == 1) {
                          return ilerle();
                        } else {
                          return bitir();
                        }
                      },
                      child: Container(
                        width: containerBoyutX,
                        height: containerBoyutY,
                        margin: EdgeInsets.all(1),
                        color: rastgeleSayi2 == 1 ? Colors.black : Colors.blue,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        if (rastgeleSayi2 == 2) {
                          return ilerle();
                        } else {
                          return bitir();
                        }
                      },
                      child: Container(
                        width: containerBoyutX,
                        height: containerBoyutY,
                        margin: EdgeInsets.all(1),
                        color: rastgeleSayi2 == 2 ? Colors.black : Colors.blue,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        if (rastgeleSayi2 == 3) {
                          return ilerle();
                        } else {
                          return bitir();
                        }
                      },
                      child: Container(
                        width: containerBoyutX,
                        height: containerBoyutY,
                        margin: EdgeInsets.all(1),
                        color: rastgeleSayi2 == 3 ? Colors.black : Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: pozisyon3,
                child: Row(
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        if (rastgeleSayi3 == 0) {
                          return ilerle();
                        } else {
                          return bitir();
                        }
                      },
                      child: Container(
                        width: containerBoyutX,
                        height: containerBoyutY,
                        margin: EdgeInsets.all(1),
                        color: rastgeleSayi3 == 0 ? Colors.black : Colors.blue,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        if (rastgeleSayi3 == 1) {
                          return ilerle();
                        } else {
                          return bitir();
                        }
                      },
                      child: Container(
                        width: containerBoyutX,
                        height: containerBoyutY,
                        margin: EdgeInsets.all(1),
                        color: rastgeleSayi3 == 1 ? Colors.black : Colors.blue,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        if (rastgeleSayi3 == 2) {
                          return ilerle();
                        } else {
                          return bitir();
                        }
                      },
                      child: Container(
                        width: containerBoyutX,
                        height: containerBoyutY,
                        margin: EdgeInsets.all(1),
                        color: rastgeleSayi3 == 2 ? Colors.black : Colors.blue,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        if (rastgeleSayi3 == 3) {
                          return ilerle();
                        } else {
                          return bitir();
                        }
                      },
                      child: Container(
                        width: containerBoyutX,
                        height: containerBoyutY,
                        margin: EdgeInsets.all(1),
                        color: rastgeleSayi3 == 3 ? Colors.black : Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: pozisyon4,
                child: Row(
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        if (rastgeleSayi4 == 0) {
                          return ilerle();
                        } else {
                          return bitir();
                        }
                      },
                      child: Container(
                        width: containerBoyutX,
                        height: containerBoyutY,
                        margin: EdgeInsets.all(1),
                        color: rastgeleSayi4 == 0 ? Colors.black : Colors.blue,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        if (rastgeleSayi4 == 1) {
                          return ilerle();
                        } else {
                          return bitir();
                        }
                      },
                      child: Container(
                        width: containerBoyutX,
                        height: containerBoyutY,
                        margin: EdgeInsets.all(1),
                        color: rastgeleSayi4 == 1 ? Colors.black : Colors.blue,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        if (rastgeleSayi4 == 2) {
                          return ilerle();
                        } else {
                          return bitir();
                        }
                      },
                      child: Container(
                        width: containerBoyutX,
                        height: containerBoyutY,
                        margin: EdgeInsets.all(1),
                        color: rastgeleSayi4 == 2 ? Colors.black : Colors.blue,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        if (rastgeleSayi4 == 3) {
                          return ilerle();
                        } else {
                          return bitir();
                        }
                      },
                      child: Container(
                        width: containerBoyutX,
                        height: containerBoyutY,
                        margin: EdgeInsets.all(1),
                        color: rastgeleSayi4 == 3 ? Colors.black : Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: pozisyon5,
                child: Row(
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        if (rastgeleSayi5 == 0) {
                          return ilerle();
                        } else {
                          return bitir();
                        }
                      },
                      child: Container(
                        width: containerBoyutX,
                        height: containerBoyutY,
                        margin: EdgeInsets.all(1),
                        color: rastgeleSayi5 == 0 ? Colors.black : Colors.blue,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        if (rastgeleSayi5 == 1) {
                          return ilerle();
                        } else {
                          return bitir();
                        }
                      },
                      child: Container(
                        width: containerBoyutX,
                        height: containerBoyutY,
                        margin: EdgeInsets.all(1),
                        color: rastgeleSayi5 == 1 ? Colors.black : Colors.blue,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        if (rastgeleSayi5 == 2) {
                          return ilerle();
                        } else {
                          return bitir();
                        }
                      },
                      child: Container(
                        width: containerBoyutX,
                        height: containerBoyutY,
                        margin: EdgeInsets.all(1),
                        color: rastgeleSayi5 == 2 ? Colors.black : Colors.blue,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        if (rastgeleSayi5 == 3) {
                          return ilerle();
                        } else {
                          return bitir();
                        }
                      },
                      child: Container(
                        width: containerBoyutX,
                        height: containerBoyutY,
                        margin: EdgeInsets.all(1),
                        color: rastgeleSayi5 == 3 ? Colors.black : Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: pozisyon6,
                child: Row(
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        if (rastgeleSayi6 == 0) {
                          return ilerle();
                        } else {
                          return bitir();
                        }
                      },
                      child: Container(
                        width: containerBoyutX,
                        height: containerBoyutY,
                        margin: EdgeInsets.all(1),
                        color: rastgeleSayi6 == 0 ? Colors.black : Colors.blue,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        if (rastgeleSayi6 == 1) {
                          return ilerle();
                        } else {
                          return bitir();
                        }
                      },
                      child: Container(
                        width: containerBoyutX,
                        height: containerBoyutY,
                        margin: EdgeInsets.all(1),
                        color: rastgeleSayi6 == 1 ? Colors.black : Colors.blue,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        if (rastgeleSayi6 == 2) {
                          return ilerle();
                        } else {
                          return bitir();
                        }
                      },
                      child: Container(
                        width: containerBoyutX,
                        height: containerBoyutY,
                        margin: EdgeInsets.all(1),
                        color: rastgeleSayi6 == 2 ? Colors.black : Colors.blue,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        if (rastgeleSayi6 == 3) {
                          return ilerle();
                        } else {
                          return bitir();
                        }
                      },
                      child: Container(
                        width: containerBoyutX,
                        height: containerBoyutY,
                        margin: EdgeInsets.all(1),
                        color: rastgeleSayi6 == 3 ? Colors.black : Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: pozisyon7,
                child: Row(
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        if (rastgeleSayi7 == 0) {
                          return ilerle();
                        } else {
                          return bitir();
                        }
                      },
                      child: Container(
                        width: containerBoyutX,
                        height: containerBoyutY,
                        margin: EdgeInsets.all(1),
                        color: rastgeleSayi7 == 0 ? Colors.black : Colors.blue,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        if (rastgeleSayi7 == 1) {
                          return ilerle();
                        } else {
                          return bitir();
                        }
                      },
                      child: Container(
                        width: containerBoyutX,
                        height: containerBoyutY,
                        margin: EdgeInsets.all(1),
                        color: rastgeleSayi7 == 1 ? Colors.black : Colors.blue,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        if (rastgeleSayi7 == 2) {
                          return ilerle();
                        } else {
                          return bitir();
                        }
                      },
                      child: Container(
                        width: containerBoyutX,
                        height: containerBoyutY,
                        margin: EdgeInsets.all(1),
                        color: rastgeleSayi7 == 2 ? Colors.black : Colors.blue,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        if (rastgeleSayi7 == 3) {
                          return ilerle();
                        } else {
                          return bitir();
                        }
                      },
                      child: Container(
                        width: containerBoyutX,
                        height: containerBoyutY,
                        margin: EdgeInsets.all(1),
                        color: rastgeleSayi7 == 3 ? Colors.black : Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: pozisyon8,
                child: Row(
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        if (rastgeleSayi8 == 0) {
                          return ilerle();
                        } else {
                          return bitir();
                        }
                      },
                      child: Container(
                        width: containerBoyutX,
                        height: containerBoyutY,
                        margin: EdgeInsets.all(1),
                        color: rastgeleSayi8 == 0 ? Colors.black : Colors.blue,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        if (rastgeleSayi8 == 1) {
                          return ilerle();
                        } else {
                          return bitir();
                        }
                      },
                      child: Container(
                        width: containerBoyutX,
                        height: containerBoyutY,
                        margin: EdgeInsets.all(1),
                        color: rastgeleSayi8 == 1 ? Colors.black : Colors.blue,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        if (rastgeleSayi8 == 2) {
                          return ilerle();
                        } else {
                          return bitir();
                        }
                      },
                      child: Container(
                        width: containerBoyutX,
                        height: containerBoyutY,
                        margin: EdgeInsets.all(1),
                        color: rastgeleSayi8 == 2 ? Colors.black : Colors.blue,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        if (rastgeleSayi8 == 3) {
                          return ilerle();
                        } else {
                          return bitir();
                        }
                      },
                      child: Container(
                        width: containerBoyutX,
                        height: containerBoyutY,
                        margin: EdgeInsets.all(1),
                        color: rastgeleSayi8 == 3 ? Colors.black : Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: pozisyon9,
                child: Row(
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        if (rastgeleSayi9 == 0) {
                          return ilerle();
                        } else {
                          return bitir();
                        }
                      },
                      child: Container(
                        width: containerBoyutX,
                        height: containerBoyutY,
                        margin: EdgeInsets.all(1),
                        color: rastgeleSayi9 == 0 ? Colors.black : Colors.blue,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        if (rastgeleSayi9 == 1) {
                          return ilerle();
                        } else {
                          return bitir();
                        }
                      },
                      child: Container(
                        width: containerBoyutX,
                        height: containerBoyutY,
                        margin: EdgeInsets.all(1),
                        color: rastgeleSayi9 == 1 ? Colors.black : Colors.blue,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        if (rastgeleSayi9 == 2) {
                          return ilerle();
                        } else {
                          return bitir();
                        }
                      },
                      child: Container(
                        width: containerBoyutX,
                        height: containerBoyutY,
                        margin: EdgeInsets.all(1),
                        color: rastgeleSayi9 == 2 ? Colors.black : Colors.blue,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        if (rastgeleSayi9 == 3) {
                          return ilerle();
                        } else {
                          return bitir();
                        }
                      },
                      child: Container(
                        width: containerBoyutX,
                        height: containerBoyutY,
                        margin: EdgeInsets.all(1),
                        color: rastgeleSayi9 == 3 ? Colors.black : Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
/*


/*Positioned(
             
              child: new GridView.builder(
                  itemCount: 4,
                  gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4),
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                  onTap: () {
                    
                  },
                                  child: Container(
                      width: containerBoyutX,
                      height: containerBoyutY,
                      margin: EdgeInsets.all(1),
                      color: Colors.blue,
                    );
                  }),
            ),*/
 */
