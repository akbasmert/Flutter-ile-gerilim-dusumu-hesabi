import 'package:flutter/material.dart';

class gerilimDusumuFormul extends StatelessWidget {
  const gerilimDusumuFormul({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text(
          'Gerilim Düşümü Formülü',
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
      margin: EdgeInsets.only(top: 0),
      child: Container(
        margin: EdgeInsets.only(left: 20, top: 20),
        child: Text(
          'BAKIR İÇİN GERİLİM DÜŞÜMÜ\n\n\nTrifaze :\n-------\n\n %e=(100.L.N)/(K.S.U²)\n\n=((10)^5 .L.N.(kW))/(56.S.(380)^2 )\n\n=0,0124.(L.N)/S\n\n\nMonofaze:\n---------\n\n%e=(200.L.N)/(K.S.U²)\n\n=((2x10)^5.L.N.(kW))/(56.S.(220)^2 )\n\n=0,074.(L.N)/S\n\n\n%e : Gerilim Düşümü(%)\nS: İletken Kesiti(mm25)\n\nN: Güç(kW)\nK: İletkenlik Katsayısı(m/Ωmm2)\n\nU: Gerilim(Volt)\nK(Cu): 56 m/Ωmm2\n\nL: Hat Mesafesi(metre)\nK(AI):35 m/Ωmm2\n\n ',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ), /*Image.asset('assets/formulgri.png'),*/
    );
  }
}
