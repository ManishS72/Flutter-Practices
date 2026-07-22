import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
        ),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  var arrData = [
    'Manish',
    'Alok',
    'Amrjeet',
    'Ranjan',
    'Nitish',
    'Shubham',
    'Abhishek',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       backgroundColor: Colors.deepPurple,
  title: Text(
    "Mapping Lists",
    style: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
  ),
  centerTitle: true,
  elevation: 5,
  iconTheme: IconThemeData(
    color: Colors.white,
      ),
      ),

      body:Container(
        child: ListView(
          children : arrData.map((value) => Padding(
            padding: EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(21),
                color: Colors.deepOrange,
              ),
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Center(
                  child: Text(value),
                ),),
            ),)).toList()
        ),
      )
    );
  }
}