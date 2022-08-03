import 'package:flutter/material.dart';

class trieMonoFazeGerilimDusumu extends StatefulWidget {
  const trieMonoFazeGerilimDusumu({Key? key}) : super(key: key);

  @override
  State<trieMonoFazeGerilimDusumu> createState() =>
      _trieMonoFazeGerilimDususmuState();
}

class _trieMonoFazeGerilimDususmuState
    extends State<trieMonoFazeGerilimDusumu> {
  final taktifgController = TextEditingController();
  final thatUzanluguController = TextEditingController();
  final tiletkenKesitiController = TextEditingController();
  var tbakirsonuc = 0.0;
  var taluminyumsonuc = 0.0;
  final maktifgController = TextEditingController();
  final mhatUzanluguController = TextEditingController();
  final miletkenKesitiController = TextEditingController();
  var mbakirsonuc = 0.0;
  var maluminyumsonuc = 0.0;

  _trieMonoFazeGerilimDususmuState();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //ANLIK OLARAK İŞLEM YAPMASINI SAĞLIYOR.
    //TRİFAZE İÇİN
    tiletkenKesitiController.addListener(
      () {
        trifazcalculate();
        yaz();
        setState(() {});
      },
    );
    taktifgController.addListener(
      () {
        trifazcalculate();
        yaz();
        setState(() {});
      },
    );
    thatUzanluguController.addListener(
      () {
        trifazcalculate();
        yaz();
        setState(() {});
      },
    );
    //MONOFAZE İÇİN
    miletkenKesitiController.addListener(
      () {
        monofazcalculate();
        yaz();
        setState(() {});
      },
    );
    maktifgController.addListener(
      () {
        monofazcalculate();
        yaz();
        setState(() {});
      },
    );
    mhatUzanluguController.addListener(
      () {
        monofazcalculate();
        yaz();
        setState(() {});
      },
    );
  }

  yaz() {
    print('yazıldıııı: ${tbakirsonuc} , ${taluminyumsonuc}');
  }

  //3 FAZLI HESAPLAMA FONKSİYONU
  trifazcalculate() {
    tbakirsonuc = 0.0124 *
        double.parse(thatUzanluguController.text) *
        double.parse(taktifgController.text) /
        double.parse(tiletkenKesitiController.text);
    taluminyumsonuc = 0.019786 *
        double.parse(thatUzanluguController.text) *
        double.parse(taktifgController.text) /
        double.parse(tiletkenKesitiController.text);
  }

  monofazcalculate() {
    mbakirsonuc = 0.07378985 *
        double.parse(mhatUzanluguController.text) *
        double.parse(maktifgController.text) /
        double.parse(miletkenKesitiController.text);
    maluminyumsonuc = 0.11806 *
        double.parse(mhatUzanluguController.text) *
        double.parse(maktifgController.text) /
        double.parse(miletkenKesitiController.text);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.grey.shade300,
        appBar: AppBar(
          title: Text(
            'Tri / Mono Faze Gerilim Düşümü',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          automaticallyImplyLeading: true,
          foregroundColor: Colors.black,
          backgroundColor: Colors.grey, //(0xFF363f93),
          bottom: TabBar(
            indicatorColor: Colors.grey.shade900,
            labelColor: Colors.black,
            tabs: [
              Tab(
                text: 'TRİFAZE',
              ),
              Tab(
                text: 'MONOFAZE',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            trifaze(),
            monofaze(),
          ],
        ),
      ),
    );
  }

  Widget trifaze() {
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
                hintText: 'Aktif Güç (kW)',
              ),
              controller: taktifgController,
            ),
          ),
          //HAT UZUNLUĞU
          Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            child: TextField(
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.number,
              obscureText: false, //Şifre yazarken gizliyor.
              decoration: const InputDecoration(
                //   border: InputBorder.none,
                //  helperText: "Hat uzunluğunu giriniz",
                hintText: 'Hat Uzunluğu (mt)',
              ),
              controller: thatUzanluguController,
            ),
          ),
          //İLETKEN KESİTİ
          Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            child: TextField(
              keyboardType: TextInputType.number,
              obscureText: false, //Şifre yazarken gizliyor.
              decoration: const InputDecoration(
                //   border: InputBorder.none,
                // helperText: "İletken kesitini giriniz",
                hintText: 'İletken Kesiti (mm2)',
              ),
              controller: tiletkenKesitiController,
            ),
          ),
          Container(
              margin: EdgeInsets.only(right: 20, left: 20, top: 30),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Bakır Gerilim Düşümü (%) : ${tbakirsonuc.toStringAsFixed(3)}',
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
                    'Alümiyum Gerilim Düşümü (%) : ${taluminyumsonuc.toStringAsFixed(3)}',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
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
                    'NOT:\nBakır %e = 0,0124.(L.N)/S\nAlüminyum %e = 0.019786.(L.N)/S\nkullanılmıştır.',
                    style: TextStyle(fontSize: 14),
                  )
                ],
              ))
        ],
      ),
    );
  }

//MONOFAZE SEÇİMİ
  Widget monofaze() {
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
                hintText: 'Aktif Güç (kW)',
              ),
              controller: maktifgController,
            ),
          ),
          //HAT UZUNLUĞU
          Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            child: TextField(
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.number,
              obscureText: false, //Şifre yazarken gizliyor.
              decoration: const InputDecoration(
                //   border: InputBorder.none,
                //  helperText: "Hat uzunluğunu giriniz",
                hintText: 'Hat Uzunluğu (mt)',
              ),
              controller: mhatUzanluguController,
            ),
          ),
          //İLETKEN KESİTİ
          Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            child: TextField(
              keyboardType: TextInputType.number,
              obscureText: false, //Şifre yazarken gizliyor.
              decoration: const InputDecoration(
                //   border: InputBorder.none,
                // helperText: "İletken kesitini giriniz",
                hintText: 'İletken Kesiti (mm2)',
              ),
              controller: miletkenKesitiController,
            ),
          ),
          Container(
              margin: EdgeInsets.only(right: 20, left: 20, top: 30),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Bakır Gerilim Düşümü (%) : ${mbakirsonuc.toStringAsFixed(3)}',
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
                    'Alümiyum Gerilim Düşümü (%) : ${maluminyumsonuc.toStringAsFixed(3)}',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Divider(
                    thickness: 1,
                    color: Colors.black,
                    height: 15,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'NOT:\nBakır: %e = 0.07378985.(L.N)/S\nAlüninyum %e = 0.11806.(L.N)/S\nkullanılmıştır.',
                    style: TextStyle(fontSize: 14),
                  )
                ],
              ))
        ],
      ),
    );
  }
}
