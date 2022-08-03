import 'package:flutter/material.dart';

class kwAkimHesabiformul extends StatelessWidget {
  const kwAkimHesabiformul({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text(
          'Akım Formülleri',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        automaticallyImplyLeading: true,
        foregroundColor: Colors.black,
        backgroundColor: Colors.grey, //Color(0xFF363f93),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [foto()],
        ),
      ),
    );
  }

  Widget foto() {
    return Container(
        margin: EdgeInsets.only(top: 20, left: 20),
        child: Text(
          'Monofaze: I=  P/(V)\nTrifaze: I=  P/(√3.U.cosφ)\n\n𝑽: Faz gerilimi\n𝑼: Hat gerilimi ',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        )
        //Image.asset('assets/akimhesabii.png'),
        );
  }
}
