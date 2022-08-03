import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class baraAkimTasimaKapasiteleri extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade300,
        appBar: AppBar(
          title: Text(
            'Bara Akım Taşıma Kapasiteleri',
            style: TextStyle(color: Colors.black),
          ),
          automaticallyImplyLeading: true,
          foregroundColor: Colors.black,
          backgroundColor: Colors.grey, // Color(0xFF363f93),
        ),
        body: SingleChildScrollView(
            child: Column(
          children: [
            //kabloAkimSecimi(),
            baraakimtasima(),
          ],
        )));
  }
}

Widget kabloAkimSecimi() {
  return Container(
    //height: 200,
    child: kabloCard('50', '20', '30', '58', '50', '20', '30', '58'),
  );
}

Widget baraakimtasima() {
  return Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          child: Column(
            children: [
              kabloCard1(
                  '12X2', '0,21', '125', '250', '--', '110', '220', '--'),
              kabloCard1(
                  '15X2', '0,27', '155', '270', '--', '140', '240', '--'),
              kabloCard1(
                  '15X3', '0,40', '185', '330', '--', '170', '300', '--'),
              kabloCard1(
                  '20X2', '0,36', '205', '350', '--', '185', '315', '--'),
              kabloCard1(
                  '20X3', '0,54', '245', '425', '--', '200', '380', '--'),
              kabloCard1(
                  '20X5', '0,89', '325', '550', '--', '290', '495', '--'),
              kabloCard1(
                  '25X3', '0,67', '300', '510', '--', '270', '460', '--'),
              kabloCard1(
                  '25X5', '1,12', '385', '670', '--', '350', '600', '--'),
              kabloCard1(
                  '30X3', '0,80', '350', '600', '--', '315', '540', '--'),
              kabloCard1(
                  '30X5', '1,34', '450', '780', '--', '400', '700', '--'),
              kabloCard1(
                  '40X3', '1,07', '460', '780', '--', '420', '710', '--'),
              kabloCard1(
                  '40X5', '1,78', '600', '1000', '--', '520', '900', '--'),
              kabloCard1('40X10', '3,56', '835', '1500', '2060', '750', '1350',
                  '1850'),
              kabloCard1(
                  '50X5', '2,23', '720', '1200', '1750', '630', '1100', '1500'),
              kabloCard1('50X10', '4,45', '1025', '1800', '2450', '920', '1620',
                  '2200'),
              kabloCard1(
                  '60X5', '2,67', '825', '1400', '1980', '750', '1300', '1740'),
              kabloCard1('60X10', '5,34', '1200', '2100', '2800', '1100',
                  '1860', '2500'),
              kabloCard1('80X5', '3,56', '1060', '1800', '2450', '950', '1650',
                  '2200'),
              kabloCard1('80X10', '7,12', '1540', '2600', '3300', '1400',
                  '2300', '3100'),
              kabloCard1('100X5', '4,45', '1310', '2200', '2950', '1100',
                  '2000', '2600'),
              kabloCard1('100X10', '8,90', '1880', '3100', '4000', '1700',
                  '2700', '3600'),
              kabloCard1('120X10', '10,68', '2200', '3500', '4600', '2000',
                  '3200', '4200'),
              kabloCard1('160X10', '14,24', '2880', '4400', '5800', '2600',
                  '3900', '5200'),
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

//KABLOCARD İPTAL EDİLDİ YERİNE KABLOCARD1 KULLANILIYOR.
Widget kabloCard(String baraboyutu, agirlik, boyaliba1, boyaliba2, boyaliba3,
    boyasizba1, boyasizba2, boyasizba3) {
  return Container(
    //color: Colors.grey,
    height: 130,
    margin: EdgeInsets.only(right: 10, left: 10, top: 8, bottom: 0),
    padding: EdgeInsets.all(0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Colors.grey,
    ),
    child: Stack(
      children: [
        Positioned(
          top: 10,
          left: 10,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Text(
                  'Bara Boyutu (mm): ${baraboyutu} ',
                  style: TextStyle(
                      //decoration: TextDecoration.underline,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF363f93)),
                ),
              ),
            ],
          ),
        ),
        Divider(
          color: Colors.black,
          height: 65,
          thickness: 1,
          endIndent: 10,
          indent: 10,
        ),
        Positioned(
          top: 12,
          left: 200,
          child: Container(
            child: Text(
              'Ağırlık (kg/m): ${agirlik}',
              style: TextStyle(
                  //decoration: TextDecoration.underline,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF363f93)),
            ),
          ),
        ),
        Positioned(
          top: 35,
          left: 10,
          child: Container(
            child: Text(
              'Boyalı',
              style: TextStyle(
                color: Color(0xFF363f93),
                //decoration: TextDecoration.underline,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Positioned(
          top: 50,
          left: 10,
          child: Container(
            child: Text(
              'Bara Ad.1 (A): ${boyaliba1}',
              style: TextStyle(
                //decoration: TextDecoration.underline,
                fontSize: 14, fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Positioned(
          top: 50,
          left: 140,
          child: Container(
            child: Text(
              'Bara Ad.2 (A): ${boyaliba2}',
              style: TextStyle(
                //decoration: TextDecoration.underline,
                fontSize: 14, fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Positioned(
          top: 50,
          left: 270,
          child: Container(
            child: Text(
              'Bara Ad.3 (A): ${boyaliba3}',
              style: TextStyle(
                //decoration: TextDecoration.underline,
                fontSize: 14, fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Positioned(
          top: 73,
          left: 10,
          child: Container(
            child: Text(
              'Boyasız',
              style: TextStyle(
                color: Color(0xFF363f93),
                //decoration: TextDecoration.underline,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Positioned(
          top: 89,
          left: 10,
          child: Container(
            child: Text(
              'Bara Ad.1 (A): ${boyasizba1}',
              style: TextStyle(
                //decoration: TextDecoration.underline,
                fontSize: 14, fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Positioned(
          top: 89,
          left: 140,
          child: Container(
            child: Text(
              'Bara Ad.2 (A): ${boyasizba1}',
              style: TextStyle(
                //decoration: TextDecoration.underline,
                fontSize: 14, fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Positioned(
          top: 89,
          left: 270,
          child: Container(
            child: Text(
              'Bara Ad.3 (A): ${boyasizba3}',
              style: TextStyle(
                //decoration: TextDecoration.underline,
                fontSize: 14, fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget kabloCard1(String baraboyutu, agirlik, boyaliba1, boyaliba2, boyaliba3,
    boyasizba1, boyasizba2, boyasizba3) {
  return Container(
      //color: Colors.grey,
      height: 130,
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
                    'Bara Boyutu (mm): ${baraboyutu} ',
                    style: TextStyle(
                        //decoration: TextDecoration.underline,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF363f93)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    child: Text(
                      'Ağırlık (kg/m): ${agirlik}',
                      style: TextStyle(
                          //decoration: TextDecoration.underline,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF363f93)),
                    ),
                  ),
                ],
              ),
              Container(
                height: 1,
                padding: EdgeInsets.only(
                  right: 380,
                ), //double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Boyalı',
                style: TextStyle(
                  color: Color(0xFF363f93),
                  //decoration: TextDecoration.underline,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  Container(
                    child: Text(
                      'Bara Ad.1 (A): ${boyaliba1}',
                      style: TextStyle(
                        //decoration: TextDecoration.underline,
                        fontSize: 14, fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    child: Text(
                      'Bara Ad.2 (A): ${boyaliba2}',
                      style: TextStyle(
                        //decoration: TextDecoration.underline,
                        fontSize: 14, fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    child: Text(
                      'Bara Ad.3 (A): ${boyaliba3}',
                      style: TextStyle(
                        //decoration: TextDecoration.underline,
                        fontSize: 14, fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Boyasız',
                style: TextStyle(
                  color: Color(0xFF363f93),
                  //decoration: TextDecoration.underline,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  Container(
                    child: Text(
                      'Bara Ad.1 (A): ${boyasizba1}',
                      style: TextStyle(
                        //decoration: TextDecoration.underline,
                        fontSize: 14, fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    child: Text(
                      'Bara Ad.2 (A): ${boyasizba2}',
                      style: TextStyle(
                        //decoration: TextDecoration.underline,
                        fontSize: 14, fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    child: Text(
                      'Bara Ad.3 (A): ${boyasizba3}',
                      style: TextStyle(
                        //decoration: TextDecoration.underline,
                        fontSize: 14, fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ));
}
