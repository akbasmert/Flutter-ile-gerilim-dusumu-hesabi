import 'package:flutter/material.dart';

class kwKvaHpDonusumu extends StatefulWidget {
  const kwKvaHpDonusumu({Key? key}) : super(key: key);

  @override
  State<kwKvaHpDonusumu> createState() => _kwKvaHpDonusumuState();
}

class _kwKvaHpDonusumuState extends State<kwKvaHpDonusumu> {
  final kwcontroller = TextEditingController();
  var kva1 = 0.0;
  var hp1 = 0.0;

  final kvacontroller = TextEditingController();
  var kw2 = 0.0;
  var hp2 = 0.0;

  final hpcontroller = TextEditingController();
  var kw3 = 0.0;
  var kva3 = 0.0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    kwcontroller.addListener(
      () {
        kwcalculate();
        setState(() {});
      },
    );
    kvacontroller.addListener(
      () {
        kvacalculate();
        setState(() {});
      },
    );
    hpcontroller.addListener(
      () {
        hpcalculate();
        setState(() {});
      },
    );
  }

  kwcalculate() {
    kva1 = double.parse(kwcontroller.text) / 0.8;
    hp1 = double.parse(kwcontroller.text) * 1.341;
  }

  kvacalculate() {
    kw2 = double.parse(kvacontroller.text) * 0.8;
    hp2 = 0.8 * 1.341 * double.parse(kvacontroller.text);
  }

  hpcalculate() {
    kw3 = double.parse(hpcontroller.text) / 1.341;
    kva3 = double.parse(hpcontroller.text) / (0.8 * 1.341);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.grey.shade300,
        appBar: AppBar(
          title: Text(
            'KW, KVA, HP DÖNÜŞÜMÜ',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          automaticallyImplyLeading: true,
          foregroundColor: Colors.black,
          backgroundColor: Colors.grey, // Color(0xFF363f93),
          bottom: TabBar(
            indicatorColor: Colors.grey.shade900,
            labelColor: Colors.black,
            tabs: [
              Tab(
                text: 'KW',
              ),
              Tab(
                text: 'KVA',
              ),
              Tab(
                text: 'HP',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            kw(),
            kva(),
            hp(),
          ],
        ),
      ),
    );
  }

  Widget kw() {
    return Container(
      padding: EdgeInsets.only(top: 20, left: 10, right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //TRİ FAZE SEÇİMİ

          Container(),
          //AKTİF GÜÇ
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
                hintText: 'KW',
              ),
              controller: kwcontroller,
            ),
          ),

          Container(
              margin: EdgeInsets.only(right: 20, left: 20, top: 30),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'KVA : ${kva1.toStringAsFixed(3)}',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
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
                    'HP : ${hp1.toStringAsFixed(3)}',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Divider(
                    thickness: 1,
                    color: Colors.black,
                    height: 15,
                  ),
                ],
              ))
        ],
      ),
    );
  }

//MONOFAZE SEÇİMİ
  Widget kva() {
    return Container(
      padding: EdgeInsets.only(top: 20, left: 10, right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //MONO/TRİ FAZE SEÇİMİ

          Container(),
          //AKTİF GÜÇ
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
                hintText: 'KVA',
              ),
              controller: kvacontroller,
            ),
          ),
          Container(
              margin: EdgeInsets.only(right: 20, left: 20, top: 30),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'KW : ${kw2.toStringAsFixed(3)}',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
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
                    'HP : ${hp2.toStringAsFixed(3)}',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Divider(
                    thickness: 1,
                    color: Colors.black,
                    height: 15,
                  ),
                ],
              ))
        ],
      ),
    );
  }

  Widget hp() {
    return Container(
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
                hintText: 'HP ',
              ),
              controller: hpcontroller,
            ),
          ),
          Container(
              margin: EdgeInsets.only(right: 20, left: 20, top: 30),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'KW : ${kw3.toStringAsFixed(3)}',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
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
                    'KVA : ${kva3.toStringAsFixed(3)}',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Divider(
                    thickness: 1,
                    color: Colors.black,
                    height: 15,
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
