import 'package:flutter/material.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:up_task/screens/add_task_screen.dart';
import 'package:up_task/screens/calendar_screen.dart';
import 'package:up_task/screens/home_screen.dart';
import 'package:up_task/screens/menu_bar.dart';

import 'package:up_task/screens/login_screen.dart';
import 'package:up_task/screens/search_screen.dart';
import 'package:up_task/data/database.dart';
import 'package:up_task/data/tasks.dart';

//This is the First file of the App
//This File initializes the app and loads the home layout
//DELETE WHILE PRODUCTION
void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(TaskDataAdapter());
  Hive.registerAdapter(TimeOfDayAdapter());
  Hive.registerAdapter(TaskAdapter());
  var box = await Hive.openBox('mybox');
  var box2 = await Hive.openBox('mybox2');
  var task = await Hive.openBox('task');
  var weekly = await Hive.openBox('weekly');
  var monthly = await Hive.openBox('monthly');

  runAll();

  // clear all data from both the boxes

  // box.clear();
  // box2.clear();
  // task.clear();
  // weekly.clear();
  // monthly.clear();

  runApp(const InitializeApp());
}

//UNCOMMENT WHILE PRODUCTION
// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp(const InitializeApp());
// }

class InitializeApp extends StatelessWidget {
  const InitializeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'UpTask',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),

        //UNCOMMENT WHILE PRODUCTION
        //   home: StreamBuilder<User?>(
        //     stream: FirebaseAuth.instance.authStateChanges(),
        //     builder: (context, snapshot) {
        //       if (snapshot.hasError) {
        //         return Text(snapshot.error.toString());
        //       }
        //       if (snapshot.connectionState == ConnectionState.active) {
        //         if (snapshot.data == null) {
        //           return LoginPage();
        //         } else {
        //           return HomeLayout(title: 'Flutter Demo Home Page');
        //         }
        //       }
        //       return Text(snapshot.error.toString());
        //     },
        //   ),
        // );

        //DELETE WHILE PRODUCTION
        home: HomeLayout(title: 'UpTask'));
  }
}

class HomeLayout extends StatefulWidget {
  const HomeLayout({super.key, required this.title});

  final String title;

  @override
  State<HomeLayout> createState() => _HomeLayout();
}

class _HomeLayout extends State<HomeLayout> {
  int index = 0;
  final screen = [
    HomeScreen(),
    // SearchScreen(),
    CalendarScreen()
  ]; // List of Screens
  @override
  Widget build(BuildContext context) {
    // Returns Home Layout
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      drawer: NavBar(),

      body: screen[index],

      // Button To add new tasks
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => AddTaskPage())),
        child: const Icon(Icons.add),
      ),

      // BOTTOM NAVIGATION BAR
      bottomNavigationBar: NavigationBar(
          selectedIndex: index,
          height: 60,
          onDestinationSelected: (index) => setState(() => this.index = index),
          labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
          destinations: const [
            NavigationDestination(icon: Icon(Icons.home), label: "Home"),
            // NavigationDestination(icon: Icon(Icons.search), label: "Search"),
            NavigationDestination(
                icon: Icon(Icons.calendar_today_rounded), label: "Calendar"),
          ]), // This trailing comma makes aut
    );
  }
}
