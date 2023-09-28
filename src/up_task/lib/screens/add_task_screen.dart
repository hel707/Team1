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
              // Styled TextField
              TextField(
                decoration: InputDecoration(
                  labelText: 'Task Name',
                  labelStyle: TextStyle(
                    color: Colors.blue, // Customize label text color
                    fontSize: 16.0,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(
                      color: Colors.blue, // Customize border color
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(
                      color: Colors.blue, // Customize focused border color
                    ),
                  ),
                  prefixIcon: Icon(
                    Icons.assignment, // Add an icon as a prefix
                    color: Colors.blue, // Customize icon color
                  ),
                ),
                style: TextStyle(
                  fontSize: 18.0, // Customize text inside the TextField
                ),
              ),

              SizedBox(
                height: 20,
              ),

              // ADD TIME and ADD DATE BUTTONS

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Handle the "Time" button press
                      // You can add your logic here
                    },
                    child: Text('Add Time'),
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(150, 60), // Increase button size
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Handle the "Date" button press
                      // You can add your logic here
                    },
                    child: Text('Add Date'),
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(150, 60), // Increase button size
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),

              //PRIORITY AND RECURRENCE BUTTON

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Handle the "Time" button press
                      // You can add your logic here
                    },
                    child: Text('Priority'),
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(150, 60), // Increase button size
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RecurrenceScreen())),
                    child: Text('Repeat Task'),
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(150, 60), // Increase button size
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),

              // Add other widgets or components as needed
            ],
          ),
        ),
      ),
    );
  }
}
