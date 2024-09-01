import 'package:flutter/material.dart';

class Liya extends StatefulWidget {
  const Liya({super.key});

  @override
  State<Liya> createState() => _LiyaState();
}

class _LiyaState extends State<Liya> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Text("data"),
          Text("data"),
          Text("data"),
          Text("data"),
          Text("data"),
          Text("data"),
          Text("data"),
          Text("data"),
        ],
      ),
    );
  }
}
