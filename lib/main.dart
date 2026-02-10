import 'package:flutter/material.dart';

void main() {
  runApp(FlutterApp());
}

class FlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "FlutterApp",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home: DashBoardScreen(),
    );
  }
}

class DashBoardScreen extends StatelessWidget {
  @override
  Widget build(Object context) {
    return Scaffold(
      appBar: AppBar(title: Text("DashBoard")),

      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.blue.shade50,

        child: Center(
          child: Container(
            width: 100,
            height: 100,

            decoration: BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.circular(25),
              border: Border.all(
                width: 2,
                color: Colors.red
              ),
            ),
          ),
        ),
      ),
    );
  }
}
