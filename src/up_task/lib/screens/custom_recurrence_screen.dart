import 'package:flutter/material.dart';

class CustomTask extends StatefulWidget {
  const CustomTask({Key? key});

  @override
  State<CustomTask> createState() => _CustomTaskState();
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
                            heroTag: "Su",
                            onPressed: null,
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
                            heroTag: "M",
                            onPressed: null,
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
                            heroTag: "Tu",
                            onPressed: null,
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
                            heroTag: "W",
                            onPressed: null,
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
                            heroTag: "T",
                            onPressed: null,
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
                            heroTag: "F",
                            onPressed: null,
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
                            heroTag: "S",
                            onPressed: null,
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

              // Ends Section
              //Ends(),
            ],
          ),
        ),
      ),
    );
  }
}



// class Ends extends StatefulWidget {
//   const Ends({super.key});

//   @override
//   State<Ends> createState() => _EndsState();
// }

// class _EndsState extends State<Ends> {
//   late String selectedOption = 'Do not Repeat';
//   bool isExpanded = false;

//   @override
//   Widget build(BuildContext context) {
//     return Material(
//       child: SingleChildScrollView(
//         child: Column(
//           children: <Widget>[
//             SizedBox(
//               height: 50,
//             ),
//             const ListTile(
//               title: Text(
//                 'Ends',
//                 style: TextStyle(fontSize: 18),
//               ),
//             ),

//             //Never
//             RadioListTile(
//               title: const Text('Never'),
//               value: 'Never',
//               groupValue: selectedOption,
//               onChanged: (value) {
//                 setState(() {
//                   selectedOption = value!;
//                   isExpanded = false; // Collapse the panel after selecting
//                 });
//               },
//             ),

//             //On
//             RadioListTile(
//               title: const Text('On'),
//               value: 'On',
//               groupValue: selectedOption,
//               onChanged: (value) {
//                 setState(() {
//                   selectedOption = value!;
//                   isExpanded = true; // Collapse the panel after selecting
//                 });
//               },
//             ),

            
//             //after
//             RadioListTile(
//               title: const Text('After'),
//               value: 'After',
//               groupValue: selectedOption,
//               onChanged: (value) {
//                 setState(() {
//                   selectedOption = value!;
//                   isExpanded = false; // Collapse the panel after selecting
//                 });
//               },
              
//             ),

//             //Custom
//             ElevatedButton(
//               style: ElevatedButton.styleFrom(minimumSize: Size(100, 40)),
//               onPressed: () => Navigator.push(context,
//                   MaterialPageRoute(builder: (context) => CustomTask())),
//               child: Text("Custom Recurrence"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

