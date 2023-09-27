import 'package:flutter/material.dart';
import 'package:up_task/customwidgets/tasktile.dart';
import 'package:up_task/data/tasks.dart';

class DailyTaskListView extends StatefulWidget {
  final Function(bool) onTaskCheckboxChanged;

  DailyTaskListView({required this.onTaskCheckboxChanged});

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
              updateTaskStatus(index, (tasks[index].isChecked));
            },
          );
        },
      ),
    );
  }
}
