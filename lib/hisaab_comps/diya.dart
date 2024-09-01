import 'package:flutter/material.dart';

class Diya extends StatefulWidget {
  const Diya({super.key});

  @override
  State<Diya> createState() => _DiyaState();
}

class _DiyaState extends State<Diya> {
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
