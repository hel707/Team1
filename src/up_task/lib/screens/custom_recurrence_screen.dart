import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class CustomTask extends StatefulWidget {
  const CustomTask({Key? key});

  @override
  State<CustomTask> createState() => _CustomTaskState();
}

final _myBox = Hive.box('mybox');
  
void writeData(String recur) {
  _myBox.put(101, recur);
  print('Recurrence: $recur');
}

class _CustomTaskState extends State<CustomTask> {
  @override
  Widget build(BuildContext context) {
    late String selectedOption = 'Do not Repeat';
    bool isExpanded = false;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Custom Recurrence")),
//main column
        body: SingleChildScrollView(
          child: Column(
            children: [
              //Repeat every
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 15, right: 30, top: 15, bottom: 10),
                    child: Text(
                      'Repeats Every',
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ],
              ),

              //date selection text field and drop down
              Padding(
                padding: const EdgeInsets.only(left: 5, top: 5, bottom: 20),
                child: Row(
                  children: [
                    Container(
                      width: 50, // Set your desired width here
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: '1',
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 16),
                    DropdownButton<String>(
                      value: 'Day',
                      onChanged: (newValue) {},
                      items: <String>['Day', 'Week', 'Month', 'Year']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),

              //divider line
              Divider(),

              //week selection
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 15, right: 30, top: 15, bottom: 10),
                    child: Text(
                      "Repeats on",
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ],
              ),

              //weekly row selection
              Padding(
                padding: const EdgeInsets.only(
                  left: 25,
                  top: 5,
                ),
                child: SizedBox(
                  width: 400,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(2.5),
                        child: Container(
                          height: 35,
                          width: 35,
                          child: FloatingActionButton(
                            backgroundColor: Color.fromARGB(255, 175, 175, 175), 
                            splashColor: Colors.blue,                   
                            heroTag: "Su",
                            onPressed: () {                     
                            },
                            child: Text("S"),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.5),
                        child: Container(
                          height: 35,
                          width: 35,
                          child: FloatingActionButton(
                            backgroundColor: Color.fromARGB(255, 175, 175, 175),
                            splashColor: Colors.blue,
                            heroTag: "M",
                            onPressed: () {},
                            child: Text("M"),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.5),
                        child: Container(
                          height: 35,
                          width: 35,
                          child: FloatingActionButton(
                            backgroundColor: Color.fromARGB(255, 175, 175, 175),
                            splashColor: Colors.blue,
                            heroTag: "Tu",
                            onPressed: () {},
                            child: Text("T"),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.5),
                        child: Container(
                          height: 35,
                          width: 35,
                          child: FloatingActionButton(
                            backgroundColor: Color.fromARGB(255, 175, 175, 175),
                            splashColor: Colors.blue,
                            heroTag: "W",
                            onPressed: () {},
                            child: Text("W"),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.5),
                        child: Container(
                          height: 35,
                          width: 35,
                          child: FloatingActionButton(
                            backgroundColor: Color.fromARGB(255, 175, 175, 175),
                            splashColor: Colors.blue,
                            heroTag: "T",
                            onPressed: () {},
                            child: Text("T"),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.5),
                        child: Container(
                          height: 35,
                          width: 35,
                          child: FloatingActionButton(
                            backgroundColor: Color.fromARGB(255, 175, 175, 175),
                            splashColor: Colors.blue,
                            heroTag: "F",
                            onPressed: () {},
                            child: Text("F"),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.5),
                        child: Container(
                          height: 35,
                          width: 35,
                          child: FloatingActionButton(
                            backgroundColor: Color.fromARGB(255, 175, 175, 175),
                            splashColor: Colors.blue,
                            heroTag: "S",
                            onPressed: () {},
                            child: Text("S"),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              //Divider
              SizedBox(
                height: 35,
              ),
              Divider(),

            ],
          ),
        ),
      ),
    );
  }
}




