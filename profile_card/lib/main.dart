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
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              color: Colors.blue,
              child: Icon(
                Icons.person,
                color: Colors.white,
                size: 50,
              ),
            ),
           SizedBox(height: 20),
            Text("Manish Sharma",
            style: TextStyle(
            color: Colors.black, 
            fontSize: 20,
            fontWeight: FontWeight.bold,
            ),
            ),
              Text("Flutter Learner", style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(onPressed: (){},
                   child: Text("Follow"),
                   ),
                   SizedBox(width: 10),
                   OutlinedButton(onPressed: (){},
                   child: Text('Message'))
                ],
              )
          ],
        ),
      ),
    );
  }
}
