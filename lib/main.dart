import 'package:flutter/material.dart';

import 'home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Center(child: Text("Ecom App UI", style: TextStyle(color: Colors.black),)),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.notifications,
                color: Colors.black,
              ),
              onPressed: () {
                // do something
              },
            )
          ],

        ),
        body:SingleChildScrollView(
          child:

        Ecom(),
        ),
      ),





    );
  }
}
