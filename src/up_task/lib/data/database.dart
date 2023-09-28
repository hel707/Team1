import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart'; // Import Hive Flutter for initialization
import 'package:up_task/data/tasks.dart';
final _myBox = Hive.box('mybox');

class TimeOfDayAdapter extends TypeAdapter<TimeOfDay> {
  @override
  final typeId = 1;

  @override
  TimeOfDay read(BinaryReader reader) {
    return TimeOfDay(
      hour: reader.read(),
      minute: reader.read(),
    );
  }

  @override
  void write(BinaryWriter writer, TimeOfDay obj) {
    writer.write(obj.hour);
    writer.write(obj.minute);
  }
}

class TaskDataAdapter extends TypeAdapter<TaskData> {
  @override
  final typeId = 0;

  @override
  TaskData read(BinaryReader reader) {
    return TaskData(
      id: reader.read(),
      taskName: reader.read(),
      selectedDate: reader.read(),
      selectedTime: reader.read(),
      selectedPriority: reader.read(),
      reminder: reader.read(),
      taskDescription: reader.read(),
      recurrence: reader.read(),
    );
  }

  @override
  void write(BinaryWriter writer, TaskData obj) {
    writer.write(obj.id);
    writer.write(obj.taskName);
    writer.write(obj.selectedDate);
    writer.write(obj.selectedTime);
    writer.write(obj.selectedPriority);
    writer.write(obj.reminder);
    writer.write(obj.taskDescription);
    writer.write(obj.recurrence);
  }
}

@HiveType(typeId: 0) // Add this annotation to specify the type ID
class TaskData extends HiveObject {
  @HiveField(0)
  int id;
  @HiveField(1)
  String taskName;
  @HiveField(2)
  DateTime? selectedDate;
  @HiveField(3)
  TimeOfDay? selectedTime;
  @HiveField(4)
  int? selectedPriority;
  @HiveField(5)
  int? reminder;
  @HiveField(6)
  String taskDescription;
  @HiveField(7)
  String? recurrence;

  TaskData({
    this.id = 0,
    this.taskName = '',
    this.selectedDate,
    this.selectedTime,
    this.selectedPriority,
    this.reminder,
    this.taskDescription = '',
    this.recurrence,
  });
}
void addTask(TaskData taskData) {
  writeData(taskData);
  // recurrence values: daily, weekly, monthly
  if (taskData.recurrence == 'Daily') {
    addDailyTask(taskData.taskName, taskData.selectedPriority!);
  } else if (taskData.recurrence == 'Weekly') {
    addWeeklyTask(taskData.taskName, taskData.selectedPriority!);
  } else if (taskData.recurrence == 'Monthly') {
    addMonthlyTask(taskData.taskName, taskData.selectedPriority!);
  }
}

// Saving data to Hive
void writeData(TaskData taskData) {
  _myBox.put(taskData.id, taskData);
}
