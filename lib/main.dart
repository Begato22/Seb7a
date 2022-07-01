

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sebha/Controller/controller.dart';
import 'package:sebha/View/sebha_app.dart';

void main() {
  // ignore: prefer_const_constructors
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Get.put(CounterController());
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.purple),
      home: sebha_app(),
    );
  }
}

// ignore: must_be_immutable
