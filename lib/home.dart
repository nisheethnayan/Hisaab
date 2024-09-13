import 'package:flutter/material.dart';
import 'package:hisaab/hisaab_comps/hisaab_page.dart';
import 'package:hisaab/vichaar_comps/vichaar_page.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget _getSelectedPage(int index) {
    switch (index) {
      case 0:
        return HisaabPage(); // Custom widget for Hisaab
      case 1:
        return VichaarPage(); // Custom widget for Vichaar
      default:
        return Container();
    }
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
          body: _getSelectedPage(_selectedIndex)),
    );
  }
}
