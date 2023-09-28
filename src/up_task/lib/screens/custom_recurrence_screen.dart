import 'package:flutter/material.dart';

class CustomTask extends StatelessWidget {
  const CustomTask({super.key});

  @override
  Widget build(BuildContext context) {
    
      return Scaffold(
        appBar: AppBar(title: Text("Custom Recurrence")),
        body: const Center(
          child: Row(
            children: [
              Column(
                children: [
                  Text("Repete Everyday"),
                  Row(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          labelText: "1",
                          hintText: "change number",
                        ),
                      ),
                      
                      ElevatedButton(onPressed: null, child: Text("button"))

                    ],
                  )
                ],
              )
            ],
          ),
          // child: TextField(
          //   decoration: InputDecoration(
          //     labelText: "1",
          //     hintText: "change number",
          //   ),
          // ),
        ),
      
    );
  }
}
