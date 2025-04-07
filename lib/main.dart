import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GreenSteps',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('GreenSteps'),
          centerTitle: true,
        ),
        body: ListView(
          padding: const EdgeInsets.all(15),
          children: const [
            Text('Eco Logs', style: TextStyle(fontSize: 32, color: Colors.green, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
          ],
        ),
        floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add_a_photo_sharp
        ),
        onPressed: () {},
      )
      ),
    );
  }
}
