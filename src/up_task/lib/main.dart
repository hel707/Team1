import 'package:flutter/material.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:up_task/screens/calendar_screen.dart';
import 'package:up_task/screens/home_screen.dart';
import 'package:up_task/screens/NavBAr.dart';

import 'package:up_task/screens/login_screen.dart';
import 'package:up_task/screens/search_screen.dart';

//DELETE WHILE PRODUCTION
main() {
  runApp(const MyApp());
}

//UNCOMMENT WHILE PRODUCTION
// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp(const MyApp());
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
        home: HomeLayout(title: 'Flutter Demo Home Page'));
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
  final screen = [HomeScreen(), SearchScreen(), CalendarScreen()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      drawer: NavBar(),

      body: screen[index],

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        //UNCOMMENT WHILE PRODUCTION
        // onPressed: () async {
        //   await GoogleSignIn().signOut();
        //   FirebaseAuth.instance.signOut();
        // },
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
            NavigationDestination(icon: Icon(Icons.search), label: "Search"),
            NavigationDestination(
                icon: Icon(Icons.calendar_today_rounded), label: "Calendar"),
          ]), // This trailing comma makes aut
    );
  }
}
