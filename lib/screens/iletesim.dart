import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class iletisim extends StatelessWidget {
  const iletisim({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.only(left: 40, top: 50),
          height: 210,
          decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius:
                  BorderRadius.only(bottomRight: Radius.circular(40))),
          child: Text(
            'İletişim',
            style: GoogleFonts.merriweather(
                fontSize: 40, fontWeight: FontWeight.bold)
            /*style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),*/
            ,
          ),
        ),
        Container(
          margin: EdgeInsets.only(right: 10, left: 10, top: 50),
          //decoration: BoxDecoration(color: Colors.white),
          child: Text(
            '  Uygulamanın gelişimi açısından görüş ve önerileriniz bizim için çok önemlidir.',
            style: GoogleFonts.merriweather(
              fontSize: 16,
              //fontWeight: FontWeight.bold,
            ) /* style: TextStyle(
              fontSize: 16,
            ),*/
            ,
          ),
        ),
        Container(
          margin: EdgeInsets.only(right: 10, left: 10, top: 10),
          //decoration: BoxDecoration(color: Colors.white),
          child: Text(
            '  Destek, öneri ve şikayetleriniz için madenifikir@gmail.com ile iletişim kurabilirsiniz.',
            style: GoogleFonts.merriweather(
              fontSize: 16,
            ), /*   style: TextStyle(
              fontSize: 16,
            ),*/
          ),
        ),
      ],
    ));
  }
}
