import 'package:flutter/material.dart';

class TotalHisaab extends StatelessWidget {
  const TotalHisaab({super.key, required this.total});

  final int total;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Total Hisaab: ",
              style:
                  TextStyle(color: Theme.of(context).colorScheme.onSecondary),
            ),
            Text(
              " Rs. $total",
              style:
                  TextStyle(color: Theme.of(context).colorScheme.onSecondary),
            )
          ],
        ),
      ),
    );
  }
}
