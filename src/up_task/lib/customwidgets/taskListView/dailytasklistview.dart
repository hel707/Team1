import 'package:flutter/material.dart';
import 'package:up_task/customwidgets/tasktile.dart';
import 'package:up_task/data/tasks.dart';

class DailyTaskListView extends StatefulWidget {
  @override
  _DailyTaskListViewState createState() => _DailyTaskListViewState();
}

class _DailyTaskListViewState extends State<DailyTaskListView> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          // Create a TaskTile for each task in the list
          return buildTaskTile(
            title: tasks[index].title,
            isChecked: tasks[index].isChecked,
            priority: tasks[index].priority,
            onCheckboxChanged: (bool? newValue) {
              print(tasks[index].title +
                  ' beofre click checked: ' +
                  tasks[index].isChecked.toString());
              setState(() {
                tasks[index].isChecked =
                    !(tasks[index].isChecked); // Update the isChecked property
              });
              updateTaskStatus(index, (tasks[index].isChecked));
              print(tasks[index].title +
                  ' is now checked: ' +
                  tasks[index].isChecked.toString());
            },
          );
        },
      ),
    );
  }
}
