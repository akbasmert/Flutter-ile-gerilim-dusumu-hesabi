import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:electrica/screens/favoriler.dart';
import 'package:electrica/screens/iletesim.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'body.dart';

class homePsgee extends StatefulWidget {
  @override
  State<homePsgee> createState() => _homePsgeeState();
}

class _homePsgeeState extends State<homePsgee> {
  int index = 1;

  @override
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((_) async {
      //Alert dialogu açması için internetten bulduğum çozüm
      getBool();
      print('initstate secimm: ${secimm}');
    });
  }

  Future<void> getBool() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      secimm = prefs.getBool('kayitdurum') ?? false;
      prefs.getBool('kayitdurum');
      print('getbool8): ${secimm}');
      print(' a: ${secimm}');
      kontrolekranayazdirma();
    });
  }

  Future<void> saveBool() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    secimm = true;
    prefs.setBool('kayitdurum', secimm);

    print('kayit durum kaydedildi ${secimm}');
  }

//KULLANICI SÖZLEŞMESİ ONAY KONTROL

  kontrolekranayazdirma() {
    if (secimm == false) {
      print('secimm: ${secimm}');
      print('FALSE ');
      _showDialog();
    } else {
      print('TRUE');
    }
  }

  bool secimm = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: buildAppBar(),
      backgroundColor: Colors.grey.shade300, //Color(0xFF363f93),
      bottomNavigationBar: CurvedNavigationBar(
        height: 75,
        backgroundColor: Colors.grey.shade300, //Color(0xFF363f93),
        buttonBackgroundColor: Colors.grey.shade700,
        color: Colors.grey, //Colors.grey,
        animationDuration: Duration(milliseconds: 400),
        index: index,
        onTap: (index) {
          setState(() {
            this.index = index;
          });

          print(index);
        },
        items: [
          Icon(Icons.favorite, size: 40, color: Colors.black), //(0xFF363f93)),
          Icon(Icons.home, size: 40, color: Colors.black //(0xFF363f93),
              ),
          Icon(Icons.mail_outline,
              size: 40, color: Colors.black), //(0xFF363f93)),
        ],
      ),
      //backgroundColor: Colors.white,
      body: ekran(),
    );
  }

  Widget ekran() {
    Widget child;
    if (index == 0) {
      child = favoriler();
    } else if (index == 1) {
      child = body();
    } else {
      child = iletisim();
    }
    return new Container(child: child);
  }

  //KULLANICI SÖZLEŞMESİ İÇİN DİALOG HAZIRLANDI
  _showDialog() {
    showDialog(
        context: context,
        barrierDismissible:
            false, //buton harici bir yere basınca ekrandan çıkmasını engelliyor
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Devam etmek için kullanıcı sözleşmesini onaylayınız.'),
            content: SingleChildScrollView(
              child: Text("KULLANICI SÖZLEŞMESİ"),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: MaterialButton(
                  onPressed: () {
                    SystemNavigator.pop();
                  },
                  child: Text('Hayır'),
                  color: Colors.red,
                  shape: StadiumBorder(),
                  minWidth: 100,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: MaterialButton(
                  onPressed: () async {
                    setState(() {
                      saveBool();
                    });
                    Navigator.of(context).pop();
                  },
                  child: Text('Onaylıyorum'),
                  color: Colors.green,
                  shape: StadiumBorder(),
                  minWidth: 100,
                ),
              ),
            ],
          );
        });
  }
}
