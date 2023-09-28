class Task {
  String title;
  bool isChecked;
  int priority;

  Task({required this.title, required this.isChecked, required this.priority});
}

// Hard-Coded list of tasks
// Later will Import from DataBase
List<Task> tasks = [
  Task(title: 'Exercise', isChecked: false, priority: 2),
  Task(title: 'Water The Plants', isChecked: true, priority: 1),
  Task(title: 'Read 5 Pages', isChecked: false, priority: 3),
  Task(title: 'Meditate', isChecked: false, priority: 2),
  Task(title: 'Update Daily Dairy', isChecked: true, priority: 1),
  Task(title: 'Handwriting Practice', isChecked: false, priority: 3),
  Task(title: 'Feed the Fishes', isChecked: false, priority: 2),
  Task(title: 'BP Medicine', isChecked: false, priority: 1),
  // Add more tasks here
];

List<Task> weekly_tasks = [
  Task(title: 'Clean My Room', isChecked: false, priority: 2),
  Task(title: 'Mow the lawn', isChecked: false, priority: 1),
  Task(title: 'Write a blog post', isChecked: false, priority: 3),
  Task(title: 'Go To Temple', isChecked: false, priority: 2),
  Task(title: 'Polish Shoes', isChecked: false, priority: 1),
  Task(title: 'Iron Clothes', isChecked: false, priority: 3),
  Task(title: 'Contribute on Github', isChecked: false, priority: 2),
  Task(title: 'Check Demat Account', isChecked: false, priority: 1),
  Task(title: 'Mock Test', isChecked: false, priority: 2),
  // Add more tasks here
];

List<Task> monthly_tasks = [
  Task(title: 'Mobile Bill', isChecked: false, priority: 2),
  Task(title: 'Electricity Bill', isChecked: false, priority: 1),
  Task(title: 'Credit Card Bill', isChecked: false, priority: 3),
  Task(title: 'Go on a Trip', isChecked: false, priority: 2),
  Task(title: 'Organize Fridge', isChecked: true, priority: 1),
  Task(title: 'Wash Curtains', isChecked: false, priority: 3),
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
