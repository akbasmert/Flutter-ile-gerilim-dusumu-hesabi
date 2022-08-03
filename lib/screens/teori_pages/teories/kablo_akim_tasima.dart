import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class kabloAkimTasimaKapasiteleri extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade300,
        appBar: AppBar(
          title: Text(
            'Akım Taşıma Kapasiteleri',
            style: TextStyle(color: Colors.black),
          ),
          automaticallyImplyLeading: true,
          foregroundColor: Colors.black,
          backgroundColor: Colors.grey, // Color(0xFF363f93),
        ),
        body: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            kabloAkimSecimi(),
            kabloakimtasima(),
          ],
        )));
  }
}

Widget kabloAkimSecimi() {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Colors.grey,
    ),
    margin: EdgeInsets.only(right: 10, left: 10, top: 10),
    padding: EdgeInsets.all(10),

    //height: 50,
    child: Text(
      'NYY ve NAYY Kablo',
      style: TextStyle(
        //decoration: TextDecoration.underline,
        fontSize: 18, fontWeight: FontWeight.bold,
      ),
    ),
  );
}

Widget kabloakimtasima() {
  return Container(
    child: Column(
      // crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          child: Column(
            children: [
              kabloCard1('3X300+150', '560', '523', '410', '--'),
              kabloCard1('3X240+120', '435', '464', '360', '--'),
              kabloCard1('3X185+95', '370', '399', '410', '--'),
              kabloCard1('3X150+70', '324', '353', '275', '--'),
              kabloCard1('3X120+70', '282', '313', '245', '--'),
              kabloCard1('3X95+50', '244', '275', '215', '--'),
              kabloCard1('3X70+35', '202', '227', '175', '--'),
              kabloCard1('3X50+25', '159', '184', '145', '--'),
              kabloCard1('3X35+16', '130', '157', '120', '--'),
              kabloCard1('3X25+16', '105', '127', '100', '--'),
              kabloCard1('3X16+10', '80', '97', '78', '--'),
              kabloCard1('4X6+10', '43', '55', '--', '--'),
              kabloCard1('4X10', '59', '74', '--', '--'),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ],
    ),
  );
}

Widget kabloCard(String kabloKesiti, nyyHava, nyyToprak, nayyToprak, nayyHava) {
  return Container(
    //color: Colors.grey,
    height: 85,
    margin: EdgeInsets.only(right: 10, left: 10, top: 8),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Colors.grey,
    ),
    child: Stack(
      children: [
        Positioned(
          top: 12,
          left: 10,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Text(
                  'Kablo Kesiti (mm^2): ${kabloKesiti}',
                  style: TextStyle(
                    //decoration: TextDecoration.underline,
                    fontSize: 16, fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: 10, left: 10),
          child: Divider(
            color: Colors.black,
            height: 65,
            thickness: 1,
          ),
        ),
        Positioned(
          top: 35,
          left: 10,
          child: Container(
            child: Text(
              'NYY Toprakta (A)  : ${nyyToprak} ',
              style: TextStyle(
                //decoration: TextDecoration.underline,
                fontSize: 14, fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Positioned(
          top: 35,
          left: 200,
          child: Container(
            child: Text(
              'NYY Havada (A)  : ${nyyHava} ',
              style: TextStyle(
                //decoration: TextDecoration.underline,
                fontSize: 14, fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Positioned(
          top: 55,
          left: 10,
          child: Container(
            child: Text(
              'NAYY Toprakta (A): ${nayyToprak} ',
              style: TextStyle(
                //decoration: TextDecoration.underline,
                fontSize: 14, fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Positioned(
          top: 55,
          left: 200,
          child: Container(
            child: Text(
              'NAYY Havada (A): ${nayyHava} ',
              style: TextStyle(
                //decoration: TextDecoration.underline,
                fontSize: 14, fontWeight: FontWeight.bold,
              ),
            ),
          ),
        )
      ],
    ),
  );
}

Widget kabloCard1(
    String kabloKesiti, nyyHava, nyyToprak, nayyToprak, nayyHava) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      Container(
        //color: Colors.grey,
        height: 95,
        margin: EdgeInsets.only(right: 10, left: 10, top: 8, bottom: 0),
        //padding: EdgeInsets.all(0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Container(
            margin: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Kablo Kesiti (mm^2): ${kabloKesiti} ',
                      style: TextStyle(
                          //decoration: TextDecoration.underline,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF363f93)),
                    ),
                  ],
                ),
                SizedBox(
                  height: 2,
                ),
                Container(
                  height: 1,
                  padding: EdgeInsets.only(left: 380),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Container(
                      child: Text(
                        'NYY Toprakta (A)   : ${nyyToprak}',
                        style: TextStyle(
                          //decoration: TextDecoration.underline,
                          fontSize: 16, fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: Text(
                        'NYY Havada (A)   : ${nyyHava}',
                        style: TextStyle(
                          //decoration: TextDecoration.underline,
                          fontSize: 16, fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 2,
                ),
                Row(
                  children: [
                    Container(
                      child: Text(
                        'NAYY Toprakta (A): ${nayyToprak}',
                        style: TextStyle(
                          //decoration: TextDecoration.underline,
                          fontSize: 16, fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: Text(
                        'NAYY Havada (A): ${nayyHava}',
                        style: TextStyle(
                          //decoration: TextDecoration.underline,
                          fontSize: 16, fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    ],
  );
}
