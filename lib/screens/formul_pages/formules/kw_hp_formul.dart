import 'package:flutter/material.dart';

class kwHpFormul extends StatelessWidget {
  const kwHpFormul({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text(
          'KW - HP Dönüşüm Formülü',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        automaticallyImplyLeading: true,
        foregroundColor: Colors.black,
        backgroundColor: Colors.grey, // Color(0xFF363f93),
      ),
      body: SingleChildScrollView(
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [foto()],
        ),
      ),
    );
  }

  Widget foto() {
    return Container(
      margin: EdgeInsets.only(left: 20, top: 20),
      // margin: EdgeInsets.only(top: 0),
      child: Text(
        'kW = 0.745699872 x HP\nHP = 1.341 x kW\n\nHP = Horsepower\nkW = Kilowatt',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
      ),

      /*Image.asset('assets/kwhp.png'),*/
    );
  }
}
