import 'package:flutter/material.dart';
import 'package:hisaab/hisaab_comps/hisaab_card.dart';
import 'package:hisaab/hisaab_comps/total_hisaab.dart';

class Diya extends StatefulWidget {
  const Diya({super.key});

  @override
  State<Diya> createState() => _DiyaState();
}

class _DiyaState extends State<Diya> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(children: [
        Expanded(
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: [
              HisaabCard(
                name: "Keshav",
                amount: 120,
              ),
              HisaabCard(name: "Samar", amount: 240),
              HisaabCard(name: "Satya", amount: 35),
              HisaabCard(name: "Pradeep", amount: 120),
              HisaabCard(name: "Aman", amount: 7000),
              HisaabCard(name: "Samar", amount: 50),
            ],
          ),
        ),
        TotalHisaab(total: 11200),
      ]),
    );
  }
}
