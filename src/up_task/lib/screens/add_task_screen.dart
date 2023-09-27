import 'package:flutter/material.dart';

//Custom imports
import 'package:up_task/customwidgets/Recurrence/recurrence_tile.dart';

class AddTaskPage extends StatefulWidget {
  const AddTaskPage({super.key});

  @override
  State<AddTaskPage> createState() => _AddTaskPageState();
}

class _AddTaskPageState extends State<AddTaskPage> {
//   list of recurrence types
  List recurrenceList = [
    ["Do not repeat", false],
    ["Daily", true],
  ];

  void checkBoxChanged(bool? value, int index) {
    setState(() {
      recurrenceList[index][1] = !recurrenceList[index][1];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: recurrenceList.length,
        itemBuilder: (context, index) {
          return RecurrenceTile(
            recurrenceType: recurrenceList[index][0],
            ticked: recurrenceList[index][1],
            onChanged: (value) => checkBoxChanged,
          );
        },
      ),
    );
  }
}
