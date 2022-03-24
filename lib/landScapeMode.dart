import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LandScapeMode extends StatelessWidget {
  List<String> products;
  LandScapeMode(this.products);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text('SECOND ASSIGNMENT'),
      ),
      body: Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width * 0.5,
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height / 7,),
            myContainer("FIRST ELEMENT"),
            myContainer("SECOND ELEMENT"),
            myContainer("THIRD ELEMENT"),
            myContainer("FORTH ELEMENT"),
            myContainer("FIFTH ELEMENT"),
          ],
        ),
      ),
    );
  }

  Widget myContainer(String text) {
    return Container(
      child: Text(
        text,
        style: const TextStyle(color: Colors.black, fontSize: 20),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      alignment: Alignment.topLeft,
    );
  }
}
