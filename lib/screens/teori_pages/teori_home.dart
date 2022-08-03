import 'package:electrica/screens/teori_pages/teories/bara_akim_tasima_kapasiteleri.dart';
import 'package:electrica/screens/teori_pages/teories/kablo_akim_tasima.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class teoriHome extends StatelessWidget {
  const teoriHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
          automaticallyImplyLeading: true,
          foregroundColor: Colors.black,
          title: const Text(
            'TEORİLER',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.grey),
      body: Container(
        padding: const EdgeInsets.only(right: 10.0, left: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => baraAkimTasimaKapasiteleri(),
                  ),
                );
              },
              child: card('Bara Akım Taşıma Kapasitesi'),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => kabloAkimTasimaKapasiteleri(),
                  ),
                );
              },
              child: card('Kablo Akım Taşıma Kapasitesi'),
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
