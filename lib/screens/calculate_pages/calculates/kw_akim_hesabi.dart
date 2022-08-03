import 'package:flutter/material.dart';

class kwAkimHesabi extends StatefulWidget {
  const kwAkimHesabi({Key? key}) : super(key: key);

  @override
  State<kwAkimHesabi> createState() => _kwAkimHesabiState();
}

class _kwAkimHesabiState extends State<kwAkimHesabi> {
  final aktifguccontroller = TextEditingController();
  var trifazecekilenakim = 0.0;
  var monofazecekilenakim = 0.0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    aktifguccontroller.addListener(
      () {
        trifazecekilenakim1();
        monofazecekilenakim1();
        setState(() {});
      },
    );
  }

  monofazecekilenakim1() {
    monofazecekilenakim = 1000 * double.parse(aktifguccontroller.text) / (220);
  }

  trifazecekilenakim1() {
    trifazecekilenakim = 1000 *
        double.parse(aktifguccontroller.text) /
        (380 * 1.7320508075688772 * 0.9);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        foregroundColor: Colors.black,

        title: const Text(
          'KW - AKIM HESABI',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.grey, //(0xFF363f93),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 20, left: 10, right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              child: TextField(
                autofocus: true,
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.number,
                obscureText: false, //Şifre yazarken gizliyor.

                decoration: const InputDecoration(
                  //helperText: "Aktif gücü giriniz",
                  //   border: InputBorder.none,
                  hintText: 'Aktif Güç (kW)',
                ),
                controller: aktifguccontroller,
              ),
            ),
            Container(
                margin: EdgeInsets.only(right: 20, left: 20, top: 30),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Trifaze Çekilen Akım (A) : ${trifazecekilenakim.toStringAsFixed(3)}',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Divider(
                      thickness: 1,
                      color: Colors.black,
                      height: 15,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Monofaze Çekilen Akım (A) : ${monofazecekilenakim.toStringAsFixed(3)}',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Divider(
                      thickness: 1,
                      color: Colors.black,
                      height: 15,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                        'NOT:\nMonofaze: I=  P/(220)\nTrifaze      : I=  P/(380.√3.0,9)\nkullanılmıştır.')
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
