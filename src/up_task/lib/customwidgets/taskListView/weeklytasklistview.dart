import 'package:flutter/material.dart';
import 'package:up_task/customwidgets/tasktile.dart';
import 'package:up_task/data/tasks.dart';

class WeeklyTaskListView extends StatefulWidget {
  final Function(bool) onTaskCheckboxChanged;

  WeeklyTaskListView({required this.onTaskCheckboxChanged});

  @override
  _WeeklyTaskListViewState createState() => _WeeklyTaskListViewState();
}

class _WeeklyTaskListViewState extends State<WeeklyTaskListView> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: weekly_tasks.length,
        itemBuilder: (context, index) {
          return buildTaskTile(
            title: weekly_tasks[index].title,
            isChecked: weekly_tasks[index].isChecked,
            priority: weekly_tasks[index].priority,
            onCheckboxChanged: (bool? newValue) {
              setState(() {
                weekly_tasks[index].isChecked =
                    !(weekly_tasks[index].isChecked);
              });
              widget.onTaskCheckboxChanged(weekly_tasks[index].isChecked);
            },
          );
        },
      ),
    );
  }
}
