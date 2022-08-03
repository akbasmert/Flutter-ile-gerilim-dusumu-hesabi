import 'package:electrica/screens/calculate_pages/calculates/kw_kva_hp_donusumu.dart';
import 'package:electrica/screens/calculate_pages/calculates/tir_mono_faze_gerilim_dusumu.dart';
import 'package:flutter/material.dart';

import 'calculates/kw_akim_hesabi.dart';

class calculateHome extends StatefulWidget {
  const calculateHome({Key? key}) : super(key: key);

  @override
  State<calculateHome> createState() => _calculateHomeState();
}

class _calculateHomeState extends State<calculateHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
          automaticallyImplyLeading: true,
          foregroundColor: Colors.black,
          title: const Text(
            'Hesaplamalar',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.grey //Color(0xFF363f93),
          ),
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
                    builder: (context) => trieMonoFazeGerilimDusumu(),
                  ),
                );
              },
              child: card('Tri/Mono Faze Gerilim Düşümü'),
            ),
            //KW-AKIM HESABI
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => kwAkimHesabi(),
                  ),
                );
              },
              child: card('KW - Akım Hesabı'),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => kwKvaHpDonusumu(),
                  ),
                );
              },
              child: card('KW - KVA - HP Dönüşümü'),
            ),

            //KW - KVA - HP DÖNÜŞÜMÜ
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
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
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
