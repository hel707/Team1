import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:up_task/customwidgets/taskListView/dailytasklistview.dart';
import 'package:up_task/customwidgets/taskListView/monthlytasklistview.dart';
import 'package:up_task/customwidgets/taskListView/weeklytasklistview.dart';
import 'package:up_task/data/tasks.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void updateHomeScreen() {
    setState(() {});
  }

  var show_tasks = tasks;
  var total_tasks = tasks.length;
  var completed_tasks = calculateCompletedTasks(tasks);
  var task_type = "daily";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 25),

          // CIRCULAR PROGRESSBAR

          Center(
            child: CircularPercentIndicator(
              radius: 90.0,
              lineWidth: 12.0,
              percent: (completed_tasks / total_tasks),
              circularStrokeCap: CircularStrokeCap.round,
              progressColor: Colors.deepPurple,
              backgroundColor: Colors.deepPurple.shade100,
              center: Text(
                "$completed_tasks / $total_tasks",
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
            ),
          ),

          SizedBox(height: 25),

          Expanded(
            child: Column(
              children: [
                // 3 BUTTONS - Daily , Weekly & Monthly
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        show_tasks = tasks;
                        total_tasks = tasks.length;
                        completed_tasks = calculateCompletedTasks(tasks);
                        task_type = "daily";
                        setState(() {});
                      },
                      child: Text('Daily'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        show_tasks = weekly_tasks;
                        total_tasks = weekly_tasks.length;
                        completed_tasks = calculateCompletedTasks(weekly_tasks);
                        task_type = "weekly";
                        setState(() {});
                      },
                      child: Text('Weekly'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        show_tasks = monthly_tasks;
                        total_tasks = monthly_tasks.length;
                        completed_tasks =
                            calculateCompletedTasks(monthly_tasks);
                        task_type = "monthly";
                        setState(() {});
                      },
                      child: Text('Monthly'),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                // Shows the tasks in a scrollview as per button
                if (task_type == "daily")
                  DailyTaskListView(
                    onTaskCheckboxChanged: (isChecked) {
                      setState(() {
                        completed_tasks = calculateCompletedTasks(show_tasks);
                      });
                    },
                  ),
                if (task_type == "weekly")
                  WeeklyTaskListView(
                    onTaskCheckboxChanged: (isChecked) {
                      setState(() {
                        completed_tasks = calculateCompletedTasks(show_tasks);
                      });
                    },
                  ),
                if (task_type == "monthly")
                  MonthlyTaskListView(
                    onTaskCheckboxChanged: (isChecked) {
                      setState(() {
                        completed_tasks = calculateCompletedTasks(show_tasks);
                      });
                    },
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
