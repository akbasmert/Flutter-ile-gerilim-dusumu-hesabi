import 'package:electrica/screens/teori_pages/teories/bara_akim_tasima_kapasiteleri.dart';
import 'package:electrica/screens/teori_pages/teories/kablo_akim_tasima.dart';
import 'package:flutter/material.dart';

import 'calculate_pages/calculates/kw_akim_hesabi.dart';
import 'calculate_pages/calculates/kw_kva_hp_donusumu.dart';
import 'calculate_pages/calculates/tir_mono_faze_gerilim_dusumu.dart';
import 'formul_pages/formules/gerilimdusumuformul.dart';
import 'formul_pages/formules/guc_formulleri.dart';
import 'formul_pages/formules/kw_akim_hesabi.dart';
import 'formul_pages/formules/kw_hp_formul.dart';

class favoriler extends StatelessWidget {
  const favoriler({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          appbar(),
          SizedBox(
            height: 0,
          ),
          Container(
            margin: EdgeInsets.only(right: 10, left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
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
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => gerilimDusumuFormul(),
                      ),
                    );
                  },
                  child: card('Gerilim Düşümü Formülü'),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => kwHpFormul(),
                      ),
                    );
                  },
                  child: card('kW - HP Dönüşüm Formülü'),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => kwAkimHesabiformul(),
                      ),
                    );
                  },
                  child: card('Akım Formülü'),
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
                  child: card('Güç Formülü'),
                ),
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
              ],
            ),
          ),
          SizedBox(
            height: 30,
          )
        ],
      ),
    );
  }

  Widget appbar() {
    return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.only(left: 40, top: 50),
      height: 210,
      decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40))),
      child: Text(
        'Favoriler',
        style: TextStyle(
          fontSize: 40,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  card(String ad) {
    return Container(
      //height: 70,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(top: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey,
      ),
      child: Text(
        ' ${ad}',
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }
}
