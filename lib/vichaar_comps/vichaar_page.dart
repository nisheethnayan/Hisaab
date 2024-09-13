import 'package:flutter/material.dart';
import 'package:hisaab/vichaar_comps/add_vichaar_card.dart';
import 'package:hisaab/vichaar_comps/vichaar_card.dart';
import 'package:hisaab/vichaar_comps/vichaar_header.dart';

class VichaarPage extends StatefulWidget {
  const VichaarPage({super.key});

  @override
  State<VichaarPage> createState() => _VichaarPageState();
}

class _VichaarPageState extends State<VichaarPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24, 24, 24, 0),
          child: Column(
            children: [
              VichaarHeader(),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 240,
                width: MediaQuery.sizeOf(context).width,
                child: AddVichaarCard(),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  children: [
                    VichaarCard(),
                    VichaarCard(),
                    VichaarCard(),
                    VichaarCard(),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
