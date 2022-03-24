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
      body: Row(
        children: [
          Container(
            color: Colors.white,
            width: MediaQuery.of(context).size.width /2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: MediaQuery.of(context).size.height / 8,),
                myContainer("FIRST ELEMENT"),
                myContainer("SECOND ELEMENT"),
                myContainer("THIRD ELEMENT"),
                myContainer("FORTH ELEMENT"),
                myContainer("FIFTH ELEMENT"),
              ],
            ),
          ),
          Container(color: Colors.red, width:MediaQuery.of(context).size.width /2,),
        ],
      ),
    );
  }

  Widget myContainer(String text) {
    return Container(
      child: Text(
        text,
        style: const TextStyle(color: Colors.black, fontSize: 20),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      alignment: Alignment.topLeft,
    );
  }
}
