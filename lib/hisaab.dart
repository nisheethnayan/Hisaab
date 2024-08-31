import 'package:flutter/material.dart';
import 'package:hisaab/profile.dart';

class Notes extends StatefulWidget {
  const Notes({super.key});

  @override
  State<Notes> createState() => _NotesState();
}

class _NotesState extends State<Notes> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.currency_rupee_rounded),
              label: 'Hisaab',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notes_rounded),
              label: 'Vichaar',
            ),
          ],
          currentIndex: _selectedIndex,
          iconSize: 32,
          backgroundColor: Theme.of(context).primaryColorDark,
          selectedItemColor: Theme.of(context).colorScheme.primary,
          unselectedItemColor: Theme.of(context).colorScheme.primary,
          selectedFontSize: 18,
          unselectedFontSize: 0,
          onTap: _onItemTapped,
        ),
        body: SafeArea(
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
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge
                                ?.copyWith(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .secondary),
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
                    width: MediaQuery.sizeOf(context).width,
                    child: Card(
                      color: Theme.of(context).colorScheme.secondary,
                      elevation: 6,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [TextField(), TextField()],
                        ),
                      ),
                    ),
                  ),
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
                  Text("sunbhai")
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }
}
