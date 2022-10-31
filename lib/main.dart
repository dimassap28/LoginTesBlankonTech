import 'package:flutter/material.dart';
import 'login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // int count = 1;

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(body: Login()),
    );
  }
}
