import 'package:flutter/material.dart';
import 'package:greensteps/home_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Eco Log',
      theme: ThemeData(primarySwatch: Colors.green),
      home: const HomeScreen()
    );
  }
}
