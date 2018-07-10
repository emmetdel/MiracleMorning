import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        debugShowCheckedModeBanner: false,
        // debugShowMaterialGrid: true,
        // showPerformanceOverlay: true,
        theme: new ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0.0,
            leading: IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.black,
              ),
              onPressed: () => print("touched"),
            ),
            actions: <Widget>[
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.menu, color: Colors.white),
                ),
              )
            ],
            centerTitle: true,
            title: Text(
              "Miracle Morning",
              style: TextStyle(color: Colors.black),
            ),
          ),
        ));
  }
}
