import 'package:coffe_system/src/pages/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coffe System',
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      routes: {'/home': (context) => const HomePage()},
    );
  }
}
