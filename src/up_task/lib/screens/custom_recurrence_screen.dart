import 'package:flutter/material.dart';

class CustomTask extends StatelessWidget {
  const CustomTask({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Custom Recurrence")),
//main column
        body: Column(
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
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: '1',
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

                  //week selection
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
