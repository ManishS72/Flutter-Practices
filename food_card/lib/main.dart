import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: const MyHomePage(title: 'Resturant Menu Card'),
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

      body: Container(
        decoration: BoxDecoration(color: Colors.yellow),
        child: Column(
          children: [
            Padding(padding: EdgeInsets.all(23)),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.menu, size: 40),

                Text(
                  "Food Items",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),

                Icon(Icons.person,
                size: 40,
                color: Colors.blue),
              ],
            ),

            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    print("Button is workin");
                  },
                  child: Text("Mughai"),
                ),

                ElevatedButton(
                  onPressed: () {
                    print("Chines Food");
                  },
                  child: Text("Chinese"),
                ),

                ElevatedButton(
                  onPressed: () {
                    print("Itanial Food");
                  },
                  child: Text("Italian"),
                ),
              ],
            ),

            SizedBox(height: 30),

           Center(
            child:  Container(
                width: 300,
                height: 500,
                 decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(24),
                 ),

                 child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Pita Steak",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    Text(
                      "Spanish Food",
                    ),

                    Image.asset(
                      "assets/images/Pizza.jpeg",
                      width: 150,
                      height: 150,
                      
                    ),

                    Text(
                      "\$22.00",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.yellow,
                      ),
                      onPressed: ()
                     {
                      print("Use this button for buying");
                     },
                      child: Text("Buy"),
                    ),
                  ],
                 ),
            ),
           ),
          ],
        ),
      ),
    );
  }
}
