import 'package:flutter/material.dart';

class gucFormulleri extends StatelessWidget {
  const gucFormulleri({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text(
          'GΓΌΓ§ FormΓΌlleri',
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
          'Monofaze: π· = π½. π° (πΎπππ)\nTrifaze: π· = β3. πΌ. π°. ππππ (πΎπππ)\n\nπ½: Faz gerilimi\nπΌ: Hat gerilimi  ',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ));
  }
}
