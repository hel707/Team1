import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
final taskBox = Hive.box('task');
final weeklyBox = Hive.box('weekly');
final monthlyBox = Hive.box('monthly');

class TaskAdapter extends TypeAdapter<Task> {
  @override
  final typeId = 3;

  @override
  Task read(BinaryReader reader) {
    return Task(
      title: reader.read(),
      isChecked: reader.read(),
      priority: reader.read(),
    );
  }

  @override
  void write(BinaryWriter writer, Task obj) {
    writer.write(obj.title);
    writer.write(obj.isChecked);
    writer.write(obj.priority);
  }
}

@HiveType(typeId: 3)
class Task extends HiveObject {
  @HiveField(0)
  String title;
  @HiveField(1)
  bool isChecked;
  @HiveField(2)
  int priority;
  Task({required this.title, required this.isChecked, required this.priority});
}

// load tasks from hive
void loadTasks() {
  tasks.clear();
  for (int i = 0; i < taskBox.length; i++) {
    tasks.add(taskBox.getAt(i));
  }
}

void loadWeeklyTasks() {
  weekly_tasks.clear();
  for (int i = 0; i < weeklyBox.length; i++) {
    weekly_tasks.add(weeklyBox.getAt(i));
  }
}

void loadMonthlyTasks() {
  monthly_tasks.clear();
  for (int i = 0; i < monthlyBox.length; i++) {
    monthly_tasks.add(monthlyBox.getAt(i));
  }
}

void runAll() {
  loadTasks();
  loadWeeklyTasks();
  loadMonthlyTasks();
}

List<Task> tasks = [];

List<Task> weekly_tasks = [];

List<Task> monthly_tasks = [];

void addDailyTask(String taskTitle, int priority) {
  final task = Task(title: taskTitle, isChecked: false, priority: priority);
  // tasks.add(task);
  taskBox.add(task);
}

void addWeeklyTask(String taskTitle, int priority) {
  final task = Task(title: taskTitle, isChecked: false, priority: priority);
  // weekly_tasks.add(task);
  weeklyBox.add(task);
}

void addMonthlyTask(String taskTitle, int priority) {
  final task = Task(title: taskTitle, isChecked: false, priority: priority);
  // monthly_tasks.add(task);
  monthlyBox.add(task);
}

int calculateCompletedTasks(List<Task> taskList) {
  int completedCount = 0;

  for (Task task in taskList) {
    if (task.isChecked) {
      completedCount++;
    }
  }

  return completedCount;
}

void updateTaskStatus(int taskIndex, bool newStatus) {
  if (taskIndex >= 0 && taskIndex < tasks.length) {
    tasks[taskIndex].isChecked = newStatus;
    taskBox.putAt(taskIndex, tasks[taskIndex]);
  }
}

void updateWeeklyTaskStatus(int taskIndex, bool newStatus) {
  if (taskIndex >= 0 && taskIndex < weekly_tasks.length) {
    weekly_tasks[taskIndex].isChecked = newStatus;
    weeklyBox.putAt(taskIndex, weekly_tasks[taskIndex]);
  }
}

void updateMonthlyTaskStatus(int taskIndex, bool newStatus) {
  if (taskIndex >= 0 && taskIndex < monthly_tasks.length) {
    monthly_tasks[taskIndex].isChecked = newStatus;
    monthlyBox.putAt(taskIndex, monthly_tasks[taskIndex]);
  }
}

void deleteDailyTask(int taskIndex) {
  if (taskIndex >= 0 && taskIndex < tasks.length) {
    tasks.removeAt(taskIndex);
    taskBox.deleteAt(taskIndex);
  }
}

void deleteWeeklyTask(int taskIndex) {
  if (taskIndex >= 0 && taskIndex < tasks.length) {
    weekly_tasks.removeAt(taskIndex);
    weeklyBox.deleteAt(taskIndex);
  }
}

void deleteMonthlyTask(int taskIndex) {
  if (taskIndex >= 0 && taskIndex < tasks.length) {
    monthly_tasks.removeAt(taskIndex);
    monthlyBox.deleteAt(taskIndex);
  }
}

