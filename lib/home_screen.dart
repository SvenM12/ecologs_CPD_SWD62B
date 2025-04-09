import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key})

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      appBar: AppBar(title: const Text("Welcome to Eco Logs"),
      centerTitle: true,
      backgroundColor: Colors.lightGreen),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          Text("Eco Logs Home Menu", style: TextStyle(
            fontSize: 32, color: Colors.green, fontWeight: FontWeight.bold)),
            const SizedBox(height: 20),
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){}),
    );
  }
}