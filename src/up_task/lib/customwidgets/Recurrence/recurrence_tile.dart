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
      padding: const EdgeInsets.all(20),
      child: Container(
        padding: EdgeInsets.all(20),
        child: Row(
          children: [
            //check box
            Checkbox(value: ticked, onChanged: onChanged),

            //task name
            Text(recurrenceType),
          ],
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: const Color.fromARGB(255, 158, 158, 158)),
      ),
    );
  }
}
