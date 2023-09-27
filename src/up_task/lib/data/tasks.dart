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

void deleteDailyTask(int taskIndex) {
  if (taskIndex >= 0 && taskIndex < tasks.length) {
    tasks.removeAt(taskIndex);
  }
}

void deleteWeeklyTask(int taskIndex) {
  if (taskIndex >= 0 && taskIndex < tasks.length) {
    weekly_tasks.removeAt(taskIndex);
  }
}

void deleteMonthlyTask(int taskIndex) {
  if (taskIndex >= 0 && taskIndex < tasks.length) {
    monthly_tasks.removeAt(taskIndex);
  }
}
