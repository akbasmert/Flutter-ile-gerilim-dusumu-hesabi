import 'package:electrica/screens/formul_pages/formul_home.dart';
import 'package:electrica/screens/teori_pages/teori_home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'calculate_pages/calculate_home.dart';

class body extends StatefulWidget {
  @override
  State<body> createState() => _bodyState();
}

class _bodyState extends State<body> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 210,
          //margin: EdgeInsets.only(right: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  //bottomRight: Radius.circular(40),
                  ),
              color: Colors.grey //Color(0xFF363f93),
              ),
          child: Stack(
            children: [
              Positioned(
                top: 60,
                child: Container(
                  height: 110,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(0),
                      bottomRight: Radius.circular(0),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 20,
                left: 40,
                child: Text(
                  'Electrical\n    Calculations',
                  style: GoogleFonts.merriweather(
                      fontSize: 40, fontWeight: FontWeight.bold)
                  /* style: TextStyle(
                      fontSize: 31,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),*/
                  ,
                ),
              )
            ],
          ),
        ),
        Container(
          //color: Colors.white,
          height: MediaQuery.of(context).size.height * 0.05,
        ),
        //SizedBox(height: MediaQuery.of(context).size.height * 0.03),
        //FOTOĞRAFLI LİSTE 1
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => calculateHome(),
              ),
            );
          },
          child: Container(
            //color: Colors.white,
            height: 100,
            child: Stack(
              children: [
                Positioned(
                  top: 18,
                  left: 10,
                  right: 10,
                  child: Material(
                    color: Colors.grey.shade300,
                    child: Container(
                      height: 55.0,
                      width: MediaQuery.of(context).size.width * 0.9,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(8.0),
                        /* boxShadow: [
                          new BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              offset: new Offset(-10.0, 10.0),
                              blurRadius: 20.0,
                              spreadRadius: 4.0),
                        ],*/
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                  left: 15,
                  //BURADA KALDIN AMK
                  child: Card(
                    elevation: 0.0,
                    shadowColor: Colors.grey.withOpacity(0.5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Container(
                      height: 85,
                      width: 70,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade700, // Color(0xFF363f93),
                          borderRadius: BorderRadius.circular(10.0),
                          image: DecorationImage(
                              fit: BoxFit.contain,
                              image: ExactAssetImage("assets/hesap2.png"))),
                    ),
                  ),
                ),
                Positioned(
                  top: 27,
                  left: 105,
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hesaplamalar',
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        //FOTOĞRAFLI LİSTE 2
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => formulHome(),
              ),
            );
          },
          child: Container(
            // color: Colors.white,
            height: 100,
            child: Stack(
              children: [
                Positioned(
                  top: 18,
                  left: 10,
                  right: 10,
                  child: Material(
                    color: Colors.grey.shade300,
                    child: Container(
                      height: 55.0,
                      width: MediaQuery.of(context).size.width * 0.9,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(8.0),
                        /* boxShadow: [
                          new BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              offset: new Offset(-10.0, 10.0),
                              blurRadius: 20.0,
                              spreadRadius: 4.0),
                        ],*/
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                  left: 15,
                  //BURADA KALDIN AMK
                  child: Card(
                    elevation: 0.0,
                    shadowColor: Colors.grey.withOpacity(0.5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Container(
                      height: 85,
                      width: 70,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade700, // Color(0xFF363f93),
                        borderRadius: BorderRadius.circular(10.0),
                        image: DecorationImage(
                          fit: BoxFit.contain,
                          image: ExactAssetImage("assets/formul.png"),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 27,
                  left: 105,
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Formüller',
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        //FOTOĞRAFLAR LİSTE 3
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => teoriHome(),
              ),
            );
          },
          child: Container(
            //color: Colors.white,
            height: 100,
            child: Stack(
              children: [
                Positioned(
                  top: 18,
                  left: 10,
                  right: 10,
                  child: Material(
                    color: Colors.grey.shade300,
                    child: Container(
                      height: 55.0,
                      width: MediaQuery.of(context).size.width * 0.9,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(8.0),
                        /*boxShadow: [
                            new BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                offset: new Offset(-10.0, 10.0),
                                blurRadius: 20.0,
                                spreadRadius: 4.0),
                          ]*/
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                  left: 15,
                  //BURADA KALDIN AMK
                  child: Card(
                    elevation: 0.0,
                    // shadowColor: Colors.grey.withOpacity(0.5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Container(
                      height: 85,
                      width: 70,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade700, //Color(0xFF363f93),
                        borderRadius: BorderRadius.circular(10.0),
                        image: DecorationImage(
                          fit: BoxFit.contain,
                          image: ExactAssetImage("assets/teorem.png"),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 27,
                  left: 105,
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Teorem',
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            padding: EdgeInsets.only(right: 0, top: 10, left: 0),
            alignment: Alignment.topRight,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  // topLeft: Radius.circular(40),
                  ),
              //  color: Colors.white //Color(0xFF363f93),
            ),
            child: Stack(
              children: [
                /* Positioned(
                  top: 0,
                  right: 10,
                  left: 10,
                  child: Container(
                    height: 90,
                    //width: 350,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 7,
                  left: 30,
                  child: Text(
                    'Electrica Calculate',
                    style: TextStyle(
                        fontSize: 31,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                )*/
              ],
            ),
          ),
        ),
      ],
    );
  }
}
