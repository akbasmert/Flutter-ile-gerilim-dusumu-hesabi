import 'package:flutter/material.dart';

class gucFormulleri extends StatelessWidget {
  const gucFormulleri({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text(
          'Güç Formülleri',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        automaticallyImplyLeading: true,
        foregroundColor: Colors.black,
        backgroundColor: Colors.grey, // Color(0xFF363f93),
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
        margin: EdgeInsets.only(left: 20, top: 20),
        // margin: EdgeInsets.only(top: 0),
        child: Text(
          'Monofaze: 𝑷 = 𝑽. 𝑰 (𝑾𝒂𝒕𝒕)\nTrifaze: 𝑷 = √3. 𝑼. 𝑰. 𝒄𝒐𝒔𝝋 (𝑾𝒂𝒕𝒕)\n\n𝑽: Faz gerilimi\n𝑼: Hat gerilimi  ',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ));
  }
}
