import 'package:flutter/material.dart';

//Custom imports
import 'package:up_task/customwidgets/Recurrence/recurrence_tile.dart';

class AddTaskPage extends StatefulWidget {
  const AddTaskPage({super.key});

  @override
  State<AddTaskPage> createState() => _AddTaskPageState();
}

class _AddTaskPageState extends State<AddTaskPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          RecurrenceTile( 
            recurrenceType: "Do not repete",        // do nothing
            ticked: true,
            onChanged: (p0) {},
          ),
          RecurrenceTile( 
            recurrenceType: "Daily",        // daily
            ticked: true,
            onChanged: (p0) {},
          ),
          RecurrenceTile( 
            recurrenceType: "Weekly on a Day",        // Weekly on a day
            ticked: true,
            onChanged: (p0) {},
          ),
          RecurrenceTile( 
            recurrenceType: "Monthly on some day of week",// monthly on some day of week
            ticked: true,
            onChanged: (p0) {},
          ),
          RecurrenceTile( 
            recurrenceType: "Anually on same date",        // anually
            ticked: true,
            onChanged: (p0) {},
          ),
          
        ],
      ),
    );
  }
}
