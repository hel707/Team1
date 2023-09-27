import 'package:flutter/material.dart';

//Custom imports
import 'package:up_task/customwidgets/Recurrence/recurrence_tile.dart';
import 'package:up_task/screens/add_task_screen.dart';

class AddTaskPage extends StatelessWidget {
  const AddTaskPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Recursions'),
        ),
        body: const RadioWithExpansion(),
      ),
    );
  }
}

// state full widgit for expansion radio button
class RadioWithExpansion extends StatefulWidget {
  const RadioWithExpansion({super.key});

  @override
  State<RadioWithExpansion> createState() => _RadioWithExpansionState();
}

class _RadioWithExpansionState extends State<RadioWithExpansion> {
  late String selectedOption = 'Do not repete';
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const ListTile(
          title: Text(
            'Select type of recursion:',
            style: TextStyle(fontSize: 18),
          ),
        ),

        RadioListTile(
          title: const Text('Do not repete'),
          value: 'Do not repete',
          groupValue: selectedOption,
          onChanged: (value) {
            setState(() {
              selectedOption = value!;
              isExpanded = false; // Collapse the panel after selecting
            });
          },
        ),

        RadioListTile(
          title: const Text('Daily'),
          value: 'Daily',
          groupValue: selectedOption,
          onChanged: (value) {
            setState(() {
              selectedOption = value!;
              isExpanded = true; // Collapse the panel after selecting
            });
          },
        ),

//Weekly on a day
        ExpansionTile(
          title: const Text(
            'Weekly on a day',
            style: TextStyle(color: Colors.blue),
          ),
          initiallyExpanded: isExpanded,
          onExpansionChanged: (value) {
            setState(() {
              isExpanded = value;
            });
          },
          children: <Widget>[
            RadioListTile(
              title: const Text('Monday'),
              value: 'Monday',
              groupValue: selectedOption,
              onChanged: (value) {
                setState(() {
                  selectedOption = value!;
                  isExpanded = false; // Collapse the panel after selecting
                });
              },
            ),
            RadioListTile(
              title: const Text('Tuesday'),
              value: 'Tuesday',
              groupValue: selectedOption,
              onChanged: (value) {
                setState(() {
                  selectedOption = value!;
                  isExpanded = false; // Collapse the panel after selecting
                });
              },
            ),
            RadioListTile(
              title: const Text('Wednesday'),
              value: 'Wednesday',
              groupValue: selectedOption,
              onChanged: (value) {
                setState(() {
                  selectedOption = value!;
                  isExpanded = false; // Collapse the panel after selecting
                });
              },
            ),
            RadioListTile(
              title: const Text('Thrusday'),
              value: 'Thrusday',
              groupValue: selectedOption,
              onChanged: (value) {
                setState(() {
                  selectedOption = value!;
                  isExpanded = false; // Collapse the panel after selecting
                });
              },
            ),
            RadioListTile(
              title: const Text('Friday'),
              value: 'Friday',
              groupValue: selectedOption,
              onChanged: (value) {
                setState(() {
                  selectedOption = value!;
                  isExpanded = false; // Collapse the panel after selecting
                });
              },
            ),
            RadioListTile(
              title: const Text('Saturday'),
              value: 'Saturday',
              groupValue: selectedOption,
              onChanged: (value) {
                setState(() {
                  selectedOption = value!;
                  isExpanded = false; // Collapse the panel after selecting
                });
              },
            ),
          ],
        ),

// Monthly on same day of week
        ExpansionTile(
          title: const Text(
            'Monthly on same day of week',
            style: TextStyle(color: Colors.blue),
          ),
          initiallyExpanded: isExpanded,
          onExpansionChanged: (value) {
            setState(() {
              isExpanded = value;
            });
          },
          children: <Widget>[
            RadioListTile(
              title: const Text('Option 1'),
              value: 'Option 1',
              groupValue: selectedOption,
              onChanged: (value) {
                setState(() {
                  selectedOption = value!;
                  isExpanded = false; // Collapse the panel after selecting
                });
              },
            ),
            RadioListTile(
              title: const Text('Option 2'),
              value: 'Option 2',
              groupValue: selectedOption,
              onChanged: (value) {
                setState(() {
                  selectedOption = value!;
                  isExpanded = false; // Collapse the panel after selecting
                });
              },
            ),
            RadioListTile(
              title: const Text('Option 3'),
              value: 'Option 3',
              groupValue: selectedOption,
              onChanged: (value) {
                setState(() {
                  selectedOption = value!;
                  isExpanded = false; // Collapse the panel after selecting
                });
              },
            ),
          ],
        ),
      ],
    );
  }
}
