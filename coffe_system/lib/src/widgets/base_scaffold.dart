import 'package:flutter/material.dart';

class BaseScaffold extends StatelessWidget {
  final Widget body;

  const BaseScaffold({required this.body});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Coffe System",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 255, 255, 255),
          ),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color.fromARGB(255, 82, 58, 50),
        centerTitle: true,
      ),
      endDrawer: Drawer(),

      body: body,
    );
  }
}
