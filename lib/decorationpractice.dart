import 'package:flutter/material.dart';

class DecorationPractice extends StatelessWidget {
  const DecorationPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Decoration Practice")),
      body: Center(
        child: Container(
          height: 150,
          width: 150,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.black, width: 3),
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 8,
                offset: Offset(4, 4),
              ),
            ],
          ),
          child: const Center(
            child: Text(
              "Hello Flutter",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
