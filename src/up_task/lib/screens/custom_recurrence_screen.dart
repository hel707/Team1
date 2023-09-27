import 'package:flutter/material.dart';

class CustomTask extends StatelessWidget {
  const CustomTask({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Custom Recurrence")),
        body: const Center(
          child: Text(
            "Repeats every",
            style: TextStyle(fontSize: 25),
          ),
          child: 

        ),
      ),
    );
  }
}
