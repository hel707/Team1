import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:up_task/screens/recurrence_screen.dart';
import 'package:up_task/data/database.dart';
import 'package:up_task/data/tasks.dart';

final _myBox = Hive.box('mybox2');

String getRecurrence() {
  return _myBox.get(102);
}

class AddTaskPage extends StatelessWidget {
  // const AddTaskPage({Key? key});
  final TaskData taskData = TaskData();

  void getID() {
    taskData.id = 1000 + _myBox.length;
    taskData.recurrence = getRecurrence();
  }

  Future<void> _showPriorityDialog(BuildContext context) async {
    int? selectedPriority;

    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Select Priority'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ElevatedButton(
                onPressed: () {
                  selectedPriority = 1;
                  Navigator.of(context).pop();
                },
                child: Text('Priority 1'),
              ),
              ElevatedButton(
                onPressed: () {
                  selectedPriority = 2;
                  Navigator.of(context).pop();
                },
                child: Text('Priority 2'),
              ),
              ElevatedButton(
                onPressed: () {
                  selectedPriority = 3;
                  Navigator.of(context).pop();
                },
                child: Text('Priority 3'),
              ),
            ],
          ),
        );
      },
    );

    if (selectedPriority != null) {
      // Handle the selected priority here
      taskData.selectedPriority = selectedPriority;
      print('Selected Priority: $selectedPriority');
    }
  }

  Future<void> _showTimePicker(BuildContext context) async {
    final selectedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );

    if (selectedTime != null) {
      // Handle the selected time here
      taskData.selectedTime = selectedTime;
      print('Selected Time: ${selectedTime.format(context)}');
    }
  }

  Future<void> _showDatePicker(BuildContext context) async {
    final selectedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(Duration(days: 365)),
    );

    if (selectedDate != null) {
      // Handle the selected date here
      taskData.selectedDate = selectedDate != null ? DateTime(selectedDate.year, selectedDate.month, selectedDate.day) : null;
      print('Selected Date: ${selectedDate.toLocal()}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 80,
              ),
              Text(
                'ADD TASK',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                onChanged: (value) {
                  taskData.taskName = value;
                },
                decoration: InputDecoration(
                  labelText: 'Task Name',
                  labelStyle: TextStyle(
                    color: Colors.purple,
                    fontSize: 16.0,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(
                      color: Colors.purple,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(
                      color: Colors.purple,
                    ),
                  ),
                  prefixIcon: Icon(
                    Icons.assignment,
                    color: Colors.purple,
                  ),
                ),
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    child: Text('Add Time'),
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(150, 60),
                    ),
                    onPressed: () => _showTimePicker(context),
                  ),
                  ElevatedButton(
                    onPressed: () => _showDatePicker(context),
                    child: Text('Add Date'),
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(150, 60),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () => _showPriorityDialog(context),
                    child: Text('Priority'),
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(150, 60),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RecurrenceScreen()
                        )
                      )
                    },
                    child: Text('Repeat Task'),
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(150, 60),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                'Reminder',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      taskData.reminder = 10;
                    },
                    child: Text('10 Min'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      taskData.reminder = 60;
                    },
                    child: Text('1 Hour'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      taskData.reminder = 1440;
                    },
                    child: Text('1 Day'),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 150,
                child: TextField(
                  onChanged: (value) {
                    taskData.taskDescription = value;
                  },
                  maxLines: 4,
                  decoration: InputDecoration(
                    labelText: 'Enter Task Description',
                    labelStyle: TextStyle(
                      color: Colors.purple,
                      fontSize: 16.0,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      borderSide: BorderSide(
                        color: Colors.purple,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      borderSide: BorderSide(
                        color: Colors.purple,
                      ),
                    ),
                  ),
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add the task to the database
          getID();
          addTask(taskData);
          runAll();
          Navigator.pop(context);
        },
        child: const Icon(Icons.check),
      ),
    );
  }
}
