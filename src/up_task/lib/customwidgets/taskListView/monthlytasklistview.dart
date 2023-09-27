import 'package:flutter/material.dart';
import 'package:up_task/customwidgets/tasktile.dart';
import 'package:up_task/data/tasks.dart';

class MonthlyTaskListView extends StatefulWidget {
  final Function(bool) onTaskCheckboxChanged;

  MonthlyTaskListView({required this.onTaskCheckboxChanged});

  @override
  _MonthlyTaskListViewState createState() => _MonthlyTaskListViewState();
}

class _MonthlyTaskListViewState extends State<MonthlyTaskListView> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: monthly_tasks.length,
        itemBuilder: (context, index) {
          return buildTaskTile(
            title: monthly_tasks[index].title,
            isChecked: monthly_tasks[index].isChecked,
            priority: monthly_tasks[index].priority,
            onCheckboxChanged: (bool? newValue) {
              setState(() {
                monthly_tasks[index].isChecked =
                    !(monthly_tasks[index].isChecked);
              });
              widget.onTaskCheckboxChanged(monthly_tasks[index].isChecked);
            },
          );
        },
      ),
    );
  }
}
