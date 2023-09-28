import 'package:flutter/material.dart';

class RecurrenceTile extends StatelessWidget {
  final String recurrenceType;
  final bool ticked;
  Function(bool?)? onChanged;

  RecurrenceTile({
    super.key,
    required this.recurrenceType,
    required this.ticked,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      //Adding padding around list of options
      padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
      child: Container(
        padding: EdgeInsets.all(5),
        child: Row(
          children: [
            //check box
            Checkbox(value: ticked, onChanged: onChanged),

            //task name
            Text(recurrenceType),
          ],
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Color.fromARGB(255, 209, 209, 209)),
      ),
    );
  }
}
