// state full widgit for expansion radio button
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:up_task/screens/custom_recurrence_screen.dart';

class RecurrenceScreen extends StatefulWidget {
  const RecurrenceScreen({super.key});

  @override
  State<RecurrenceScreen> createState() => _RecurrenceScreenState();
}

final _myBox = Hive.box('mybox2');
  
void writeData(String recur, String dayType) {
  _myBox.put(101, recur);
  _myBox.put(102, dayType);
  print('Recurrence: $recur');
}

class _RecurrenceScreenState extends State<RecurrenceScreen> {
  late String selectedOption = 'Do not Repeat';
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 50,
            ),
            const ListTile(
              title: Text(
                'Select type of recursion:',
                style: TextStyle(fontSize: 18),
              ),
            ),

            //Do not repeat
            RadioListTile(
              title: const Text('Do not repeat'),
              value: 'Do not repeat',
              groupValue: selectedOption,
              onChanged: (value) {
                writeData(value!, 'Daily');
                setState(() {
                  selectedOption = value!;
                  isExpanded = false; // Collapse the panel after selecting
                });
              },
            ),

            //Daily
            RadioListTile(
              title: const Text('Daily'),
              value: 'Daily',
              groupValue: selectedOption,
              onChanged: (value) {
                writeData(value!, 'Daily');
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
                    writeData(value!, 'Weekly');
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
                    writeData(value!, 'Weekly');
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
                    writeData(value!, 'Weekly');
                    setState(() {
                      selectedOption = value!;
                      isExpanded = false; // Collapse the panel after selecting
                    });
                  },
                ),
                RadioListTile(
                  title: const Text('Thursday'),
                  value: 'Thursday',
                  groupValue: selectedOption,
                  onChanged: (value) {
                    writeData(value!, 'Weekly');
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
                    writeData(value!, 'Weekly');
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
                    writeData(value!, 'Weekly');
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
                  title: const Text('First week'),
                  value: 'First week',
                  groupValue: selectedOption,
                  onChanged: (value) {
                    writeData(value!, 'Monthly');
                    setState(() {
                      selectedOption = value!;
                      isExpanded = false; // Collapse the panel after selecting
                    });
                  },
                ),
                RadioListTile(
                  title: const Text('Second week'),
                  value: 'Second week',
                  groupValue: selectedOption,
                  onChanged: (value) {
                    writeData(value!, 'Monthly');
                    setState(() {
                      selectedOption = value!;
                      isExpanded = false; // Collapse the panel after selecting
                    });
                  },
                ),
                RadioListTile(
                  title: const Text('Third week'),
                  value: 'Third week',
                  groupValue: selectedOption,
                  onChanged: (value) {
                    writeData(value!, 'Monthly');
                    setState(() {
                      selectedOption = value!;
                      isExpanded = false; // Collapse the panel after selecting
                    });
                  },
                ),
                RadioListTile(
                  title: const Text('Fourth week'),
                  value: 'Fourth week',
                  groupValue: selectedOption,
                  onChanged: (value) {
                    writeData(value!, 'Monthly');
                    setState(() {
                      selectedOption = value!;
                      isExpanded = false; // Collapse the panel after selecting
                    });
                  },
                ),
                RadioListTile(
                  title: const Text('Fifth week'),
                  value: 'Fifth week',
                  groupValue: selectedOption,
                  onChanged: (value) {
                    writeData(value!, 'Monthly');
                    setState(() {
                      selectedOption = value!;
                      isExpanded = false; // Collapse the panel after selecting
                    });
                  },
                ),
              ],
            ),

            //Anually on same date
            RadioListTile(
              title: const Text('Anually on same day'),
              value: 'Anually on same day',
              groupValue: selectedOption,
              onChanged: (value) {
                writeData(value!, 'Monthly');
                setState(() {
                  selectedOption = value!;
                  isExpanded = false; // Collapse the panel after selecting
                });
              },
            ),

            //Custom
            ElevatedButton(
              style: ElevatedButton.styleFrom(minimumSize: Size(100, 40)),
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CustomTask())),
              child: Text("Custom Recurrence"),
            ),
          ],
        ),
      ),
    );
  }
}
