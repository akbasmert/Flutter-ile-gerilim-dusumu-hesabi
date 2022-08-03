import 'package:electrica/screens/home_pagee.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          fontFamily: 'Schyler',
          hintColor: Colors.black,
          primaryColor: Colors.grey
              .shade900), //kare tuşuna basınca oluşan tabın rengi (arka plan uygulamalardaki tab)
      //color: Colors.red,
      debugShowCheckedModeBanner: false,
      title: 'Electrical Calculations',
      home: homePsgee(),
    );
  }
}
