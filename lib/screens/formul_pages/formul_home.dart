import 'package:electrica/screens/formul_pages/formules/guc_formulleri.dart';
import 'package:electrica/screens/formul_pages/formules/kw_hp_formul.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'formules/gerilimdusumuformul.dart';
import 'formules/kw_akim_hesabi.dart';

// ignore: camel_case_types
class formulHome extends StatelessWidget {
  const formulHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
          automaticallyImplyLeading: true,
          foregroundColor: Colors.black,
          title: const Text(
            '  FORMÜLLER',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.grey),
      body: Container(
        padding: const EdgeInsets.only(right: 10.0, left: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            //TRİ/MONO FAZE GERİLİM DÜŞÜMÜ
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => gerilimDusumuFormul(),
                  ),
                );
              },
              child: card('Gerilim Düşümü'),
            ),
            //KW - KVA - HP DÖNÜŞÜMÜ
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => kwHpFormul(),
                  ),
                );
              },
              child: card('kW - HP Dönüşüm'),
            ),
            //KW-AKIM HESABI
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => kwAkimHesabiformul(),
                  ),
                );
              },
              child: card('Akım '),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => gucFormulleri(),
                  ),
                );
              },
              child: card('Güç '),
            ),
          ],
        ),
      ),
    );
  }

  Widget card(String islemAd) {
    return Container(
      margin: EdgeInsets.only(
        // bottom: 10,
        top: 12,
      ),
      //height: 100,
      child: Container(
        padding: EdgeInsets.only(top: 10, bottom: 10, left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              ' $islemAd',
              style: GoogleFonts.merriweather(
                  fontSize: 20, fontWeight: FontWeight.bold)
              /*  style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),*/
              ,
            ),
          ],
        ),
        decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            )
            /* borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(80.0),
          ),*/
            ),
      ),
    );
  }
}
