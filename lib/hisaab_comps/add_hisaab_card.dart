import 'package:flutter/material.dart';

class AddHisaabCard extends StatefulWidget {
  const AddHisaabCard({super.key});

  @override
  State<AddHisaabCard> createState() => _AddHisaabCardState();
}

var selectedOption = 'Option 1';

class _AddHisaabCardState extends State<AddHisaabCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      color: Theme.of(context).primaryColorDark,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: Card(
              margin: EdgeInsets.all(0),
              color: Color.fromRGBO(3, 4, 14, 0.4),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Kya kiya',
                      style: TextStyle(color: Colors.white),
                    ),
                    Row(
                      children: [
                        InkWell(
                            child: Text(
                          "Diya",
                          style: TextStyle(
                              color: Colors.white, fontFamily: 'Lalezar'),
                        )),
                        SizedBox(
                          width: 16,
                        ),
                        InkWell(
                            child: Card(
                          child: Text(
                            "Liya",
                            style: TextStyle(
                                color: Colors.white, fontFamily: 'Lalezar'),
                          ),
                        )),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(10, 5, 10, 0),
            child: Card(
              margin: EdgeInsets.all(0),
              color: Color.fromRGBO(3, 4, 14, 0.4),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 2, horizontal: 16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Kisse kiya',
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(width: 140, child: TextField())
                  ],
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(10, 5, 10, 0),
            child: Card(
              margin: EdgeInsets.all(0),
              color: Color.fromRGBO(3, 4, 14, 0.4),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 2, horizontal: 16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Kitna kiya',
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(width: 120, child: TextField())
                  ],
                ),
              ),
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
                  color: Theme.of(context).colorScheme.onSecondary,
                ),
                Icon(
                  Icons.add,
                  color: Theme.of(context).colorScheme.onSecondary,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
