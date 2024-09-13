import 'package:flutter/material.dart';
import 'package:hisaab/hisaab_comps/add_hisaab_card.dart';
import 'package:hisaab/hisaab_comps/diya.dart';
import 'package:hisaab/hisaab_comps/hisaab_header.dart';
import 'package:hisaab/hisaab_comps/liya.dart';

class HisaabPage extends StatefulWidget {
  const HisaabPage({super.key});

  @override
  State<HisaabPage> createState() => _HisaabPageState();
}

class _HisaabPageState extends State<HisaabPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(24, 24, 24, 0),
          child: Column(
            children: [
              const HisaabHeader(),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                  height: 240,
                  width: MediaQuery.sizeOf(context).width,
                  child: const AddHisaabCard()),
              SizedBox(
                height: 10,
              )
            ],
          ),
        ),
        Container(
          color: Theme.of(context).primaryColor,
          child: TabBar(
            tabs: [
              const Tab(text: 'Diya'),
              const Tab(text: 'Liya'),
            ],
            labelColor: Theme.of(context).colorScheme.secondary,
            labelPadding: EdgeInsets.zero,
            labelStyle: Theme.of(context).textTheme.bodyMedium,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorColor: Theme.of(context).colorScheme.secondary,
            indicatorWeight: 4.0,
            isScrollable: false,
          ),
        ),
        const Expanded(
          child: TabBarView(
            children: [
              Diya(),
              Liya(),
            ],
          ),
        ),
      ],
    ));
  }
}
