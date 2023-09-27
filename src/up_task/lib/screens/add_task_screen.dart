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
    ["Weekly on a day",false],
    ["Monthly on same day of week", false],
    ["Anually on same date",false],
    ["Custom", false],
  ];

  void checkBoxChanged(bool? value, int index) {
      recurrenceList[index][1] = !(recurrenceList[index][1]);
    setState(() {
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
            onChanged: (value) => checkBoxChanged(value, index),
          );
        },
      ),
    );
  }
}
