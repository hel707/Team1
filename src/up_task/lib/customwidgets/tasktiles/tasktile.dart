import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

Widget buildTaskTile({
  required String title,
  required bool isChecked,
  required int priority,
  required ValueChanged<bool?> onCheckboxChanged,
  required Function(BuildContext?) onDelete,
  String? taskType,
}) {
  return Slidable(
    endActionPane: ActionPane(motion: StretchMotion(), children: [
      SlidableAction(
        onPressed: onDelete,
        icon: Icons.delete,
        backgroundColor: Colors.red,
      ),
    ]),
    child: ListTile(
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
    ),
  );
}

deletetask() {}

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
