import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ass2/portraitMode.dart';
import 'package:ass2/landScapeMode.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
     List<String> products=['FIRST ELEMENT','SECOND ELEMENT','THIRD ELEMENT','FORTH ELEMENT','FIFTH ELEMENT'];

    final isLandScape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    if (isLandScape) {
      return LandScapeMode(products);
    } else {
      return portraitMode(products);
    }
  }
}

