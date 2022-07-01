// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sebha/Controller/controller.dart';
import 'package:sebha/seb7a_icon.dart';

// ignore: camel_case_types
class sebha_app extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _sebha_appState();
}

Color w = Colors.white;
Color p = Colors.purple;
double imgH = 150;
double imgW = 150;

// ignore: non_constant_identifier_names
// ignore: camel_case_types
class _sebha_appState extends State<sebha_app> {
  @override
  Widget build(BuildContext context) {
    final CounterController _counterController = Get.find();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Seb7a"),
        leading: const Icon(MyFlutterApp.mosque),
      ),
      // ignore: avoid_unnecessary_containers
      body: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetX<CounterController>(
              builder: (_counterController) => Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Image.asset(
                      "assets/images/sb7a.png",
                      width: imgW,
                      height: imgH,
                    ),
                  ),
                  Text(
                    _counterController.counter.value.toString(),
                    style: TextStyle(
                      fontSize: 100,
                      color:
                          _counterController.finshed ? Colors.transparent : p,
                      fontWeight: FontWeight.bold,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    _counterController.tasabih.value.toString(),
                    style: TextStyle(
                      fontSize: _counterController.finshed ? 20 : 30,
                      color: p,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    // ignore: deprecated_member_use
                    child: SizedBox(
                      width: 300,
                      child: ElevatedButton(
                        style: ButtonStyle(
                            foregroundColor:
                                MaterialStateProperty.all<Color>(Colors.white),
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.purple),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)))),
                        child: Text(
                            _counterController.finshed ? "مرة أخرى" : "سبح",
                            style: TextStyle(color: w)),
                        onPressed: () => _counterController.increament(),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
