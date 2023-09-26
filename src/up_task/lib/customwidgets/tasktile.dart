import 'package:flutter/material.dart';

Widget buildTaskTile({
  required String title,
  required bool isChecked,
  required int priority,
  required ValueChanged<bool?> onCheckboxChanged,
  String? taskType,
}) {
  return ListTile(
    leading: Checkbox(
      value: isChecked,
      onChanged: onCheckboxChanged,
    ),
    title: Text(
      title,
      style: TextStyle(
        decoration: isChecked ? TextDecoration.lineThrough : null,
      ),
    ),
    trailing: Container(
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: getPriorityColor(priority),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Text(
        'Priority $priority',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    ),
  );
}

Color getPriorityColor(int priority) {
  switch (priority) {
    case 1:
      return Colors.red;
    case 2:
      return Colors.blue;
    case 3:
      return Colors.green;
    default:
      return Colors.blue;
  }
}
