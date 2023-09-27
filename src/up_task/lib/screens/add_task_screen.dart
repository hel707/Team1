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
          title: const Text('Expansion Radio Button'),
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
  late String selectedOption='Option 1';
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const ListTile(
          title: Text(
            'Select an option:',
            style: TextStyle(fontSize: 18),
          ),
        ),
        ExpansionTile(
          title: const Text(
            'Expand to select option',
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
