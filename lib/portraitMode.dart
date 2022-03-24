import 'package:flutter/material.dart';

class portraitMode extends StatelessWidget {
  List<String> products;
  portraitMode(this.products);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Container(
        color: Colors.white.withOpacity(0.5),
        width: MediaQuery.of(context).size.width * 0.85,
        child: Column(
          children: [
            SizedBox(
                height: MediaQuery.of(context).size.height * 0.16,
                child: DrawerHeader(
                  child: Container(),
                )),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                itemCount: products.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(title: Text('${products[index]}',style: TextStyle(fontSize:20),),);
                },),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text('SECOND ASSIGNMENT'),
      ),
      body: Container(
        color: Colors.red,
      ),
    );
  }
}
