import 'package:flutter/material.dart';

//Custom imports
import 'package:up_task/customwidgets/Recurrence/recurrence_tile.dart';
import 'package:up_task/screens/add_task_screen.dart';
import 'package:up_task/screens/custom_recurrence_screen.dart';
import 'package:up_task/screens/recurrence_screen.dart';

class AddTaskPage extends StatelessWidget {
  const AddTaskPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Recursions'),
        ),
        body: const RecurrenceScreen(),
      ),
    );
  }
}
