import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey.shade200,
        appBar: AppBar(
          title: const Text("Profile Card"),
          centerTitle: true,
        ),
        body: Center(
          child: Container(
            width: 320,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.yellow,
              border: Border.all(color: Colors.blue, width: 2),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(
                  Icons.person,
                  size: 80,
                  color: Colors.blue,
                ),

                const SizedBox(height: 10),

                const Text(
                  "Manish Kumar",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 5),

                const Text(
                  "Flutter Developer",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.blue,
                  ),
                ),

                const SizedBox(height: 15),

                Container(
                  width: double.infinity,
                  height: 2,
                  color: Colors.grey,
                ),

                const SizedBox(height: 15),

                const Row(
                  children: [
                    Icon(Icons.location_on, color: Colors.red),
                    SizedBox(width: 10),
                    Text(
                      "Delhi, India",
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),

                const SizedBox(height: 10),

                const Row(
                  children: [
                    Icon(Icons.email, color: Colors.blue),
                    SizedBox(width: 10),
                    Text(
                      "manish@gmail.com",
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),

                const SizedBox(height: 10),

                const Row(
                  children: [
                    Icon(Icons.phone, color: Colors.green),
                    SizedBox(width: 10),
                    Text(
                      "7250503457",
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),

                const SizedBox(height: 20),

                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text("Contact Me"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}