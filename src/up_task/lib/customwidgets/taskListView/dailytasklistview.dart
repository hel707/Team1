// DailyTaskListView.dart
import 'package:flutter/material.dart';
import 'package:up_task/customwidgets/tasktiles/tasktile.dart';
import 'package:up_task/data/tasks.dart';

class DailyTaskListView extends StatefulWidget {
  final Function(bool) onTaskCheckboxChanged;
  final Function(int) onDeleteTask;

  DailyTaskListView(
      {required this.onTaskCheckboxChanged, required this.onDeleteTask});

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
          return buildTaskTile(
            title: tasks[index].title,
            isChecked: tasks[index].isChecked,
            priority: tasks[index].priority,
            onCheckboxChanged: (bool? newValue) {
              setState(() {
                tasks[index].isChecked = !(tasks[index].isChecked);
              });
              widget.onTaskCheckboxChanged(tasks[index].isChecked);
              updateTaskStatus(index, (tasks[index].isChecked));
            },
            onDelete: (context) {
              setState(() {
                deleteDailyTask(index);
              });
              widget.onDeleteTask(index); // Call the onDeleteTask callback here
            },
          );
        },
      ),
    );
  }
}
