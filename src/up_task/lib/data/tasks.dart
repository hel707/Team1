class Task {
  String title;
  bool isChecked;
  int priority;

  Task({required this.title, required this.isChecked, required this.priority});
}

// Hard-Coded list of tasks
// Later will Import from DataBase
List<Task> tasks = [
  Task(title: 'Sample Task ', isChecked: false, priority: 2),
  Task(title: 'Sample Task 2', isChecked: true, priority: 1),
  Task(title: 'Sample Task 3', isChecked: false, priority: 3),
  Task(title: 'Sample Task 4', isChecked: false, priority: 2),
  Task(title: 'Sample Task 5', isChecked: true, priority: 1),
  Task(title: 'Sample Task 6', isChecked: false, priority: 3),
  Task(title: 'Sample Task 7', isChecked: false, priority: 2),
  Task(title: 'Sample Task 8', isChecked: false, priority: 1),
  // Add more tasks here
];

List<Task> weekly_tasks = [
  Task(title: 'Weekly Task ', isChecked: false, priority: 2),
  Task(title: 'Weekly Task 2', isChecked: false, priority: 1),
  Task(title: 'Weekly Task 3', isChecked: false, priority: 3),
  Task(title: 'Weekly Task 4', isChecked: false, priority: 2),
  Task(title: 'Weekly Task 5', isChecked: false, priority: 1),
  Task(title: 'Weekly Task 6', isChecked: false, priority: 3),
  Task(title: 'Weekly Task 7', isChecked: false, priority: 2),
  Task(title: 'Weekly Task 8', isChecked: false, priority: 1),
  Task(title: 'Weekly Task 9', isChecked: false, priority: 2),
  // Add more tasks here
];

List<Task> monthly_tasks = [
  Task(title: 'Monthly Task ', isChecked: false, priority: 2),
  Task(title: 'Monthly Task 2', isChecked: false, priority: 1),
  Task(title: 'Monthly Task 3', isChecked: false, priority: 3),
  Task(title: 'Monthly Task 4', isChecked: false, priority: 2),
  Task(title: 'Monthly Task 5', isChecked: true, priority: 1),
  Task(title: 'Monthly Task 6', isChecked: false, priority: 3),
  // Add more tasks here
];

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
  }
}

// import 'dart:convert';
// import 'dart:io';

// class Task {
//   String title;
//   bool isChecked;
//   int priority;

//   Task({
//     required this.title,
//     required this.isChecked,
//     required this.priority,
//   });

//   factory Task.fromJson(Map<String, dynamic> json) {
//     return Task(
//       title: json['title'],
//       isChecked: json['isChecked'],
//       priority: json['priority'],
//     );
//   }
// }

// List<Task> loadTasksFromJson(String fileName) {
//   final file = File(fileName);
//   if (!file.existsSync()) {
//     return [];
//   }

//   final jsonString = file.readAsStringSync();
//   final List<dynamic> jsonList = json.decode(jsonString);

//   return jsonList.map((json) => Task.fromJson(json)).toList();
// }

// List<Task> tasks = loadTasksFromJson('lib/data/jsonFiles/tasks.json');
// List<Task> weekly_tasks =
//     loadTasksFromJson('lib/data/jsonFiles/weekly_tasks.json');
// List<Task> monthly_tasks =
//     loadTasksFromJson('lib/data/jsonFiles/monthly_tasks.json');

// int calculateCompletedTasks(List<Task> taskList) {
//   int completedCount = 0;
//   print("Tasks in the list => $taskList");
//   for (Task task in taskList) {
//     if (task.isChecked) {
//       completedCount++;
//     }
//   }

//   return completedCount;
// }

// void main() {
//   print("\nMonthly Tasks:");
//   // printTasks(monthly_tasks);
//   print(monthly_tasks[0].priority);
// }

// void printTasks(List<Task> taskList) {
//   for (Task task in taskList) {
//     print("Title: ${task.title}");
//     print("Is Checked: ${task.isChecked}");
//     print("Priority: ${task.priority}");
//     print(""); // Add an empty line for readability
//   }
// }

// void updateTaskStatus(List<Task> taskList, int taskIndex, bool newStatus) {
//   if (taskIndex >= 0 && taskIndex < taskList.length) {
//     taskList[taskIndex].isChecked = newStatus;
//   }
// }
