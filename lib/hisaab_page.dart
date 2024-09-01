import 'package:flutter/material.dart';
import 'package:hisaab/hisaab_comps/add_hisaab_card.dart';
import 'package:hisaab/hisaab_comps/hisaab_header.dart';

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
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              const HisaabHeader(),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                  height: 240,
                  width: MediaQuery.sizeOf(context).width,
                  child: const AddHisaabCard()),
            ],
          ),
        ),
        Container(
          color: Theme.of(context).primaryColor,
          child: TabBar(
            tabs: [
              Tab(text: 'Diya'),
              Tab(text: 'Liya'),
            ],
            labelColor: Theme.of(context).primaryColorDark,
            labelPadding: EdgeInsets.zero,
            labelStyle: Theme.of(context).textTheme.bodyMedium,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorColor: Theme.of(context).primaryColorDark,
            indicatorWeight: 4.0,
            isScrollable: false,
          ),
        ),
        const Expanded(
          child: TabBarView(
            children: [
              SingleChildScrollView(
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
              ),
              SingleChildScrollView(
                  child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text("sunbhai"),
                ],
              ))
            ],
          ),
        ),
      ],
    ));
  }
}
