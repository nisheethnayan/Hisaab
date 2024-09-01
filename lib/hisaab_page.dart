import 'package:flutter/material.dart';
import 'package:hisaab/profile.dart';

class HisaabPage extends StatefulWidget {
  const HisaabPage({super.key});

  @override
  State<HisaabPage> createState() => _HisaabPageState();
}

class _HisaabPageState extends State<HisaabPage> {
  var selectedOption = 'Option 1';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Kya haal',
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            color: Theme.of(context).colorScheme.secondary),
                      ),
                      Text(
                        'Nisheeth bhai',
                        style: Theme.of(context).textTheme.displayMedium,
                      )
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Profile()));
                    },
                    child: Image.asset(
                      "assets/images/profile.png",
                      width: 48,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                  height: 240,
                  width: MediaQuery.sizeOf(context).width,
                  child: Card(
                    color: Theme.of(context).colorScheme.secondary,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Kya kiya',
                              ),
                              SizedBox(
                                  width: 180,
                                  child: TextField(
                                    style: TextStyle(
                                      fontSize: 18,
                                      height: 0.6,
                                      color: Colors.black,
                                      decorationThickness: 0,
                                    ),
                                    readOnly: true,
                                    controller: TextEditingController(
                                        text: selectedOption),
                                    decoration: InputDecoration(
                                        contentPadding: EdgeInsets.symmetric(
                                            horizontal: 8, vertical: 0),
                                        suffixIcon: DropdownButton<String>(
                                          value: selectedOption,
                                          onChanged: (String? newValue) {
                                            setState(() {
                                              selectedOption = newValue!;
                                            });
                                          },
                                          items: <String>[
                                            'Option 1',
                                            'Option 2'
                                          ].map<DropdownMenuItem<String>>(
                                              (String value) {
                                            return DropdownMenuItem<String>(
                                              alignment: Alignment.centerRight,
                                              value: value,
                                              child: Text(value),
                                            );
                                          }).toList(),
                                        ),
                                        border: InputBorder.none),
                                  ))
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Kisse kiya',
                              ),
                              SizedBox(width: 160, child: TextField())
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Kitna kiya',
                              ),
                              SizedBox(width: 120, child: TextField())
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.expand_more_rounded,
                                color: Theme.of(context).colorScheme.primary,
                              ),
                              Icon(
                                Icons.add,
                                color: Theme.of(context).colorScheme.primary,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )),
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
        Expanded(
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
