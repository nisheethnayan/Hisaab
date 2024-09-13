import 'package:flutter/material.dart';
import 'package:hisaab/vichaar_comps/full_vichaar.dart';

class AddVichaarCard extends StatefulWidget {
  const AddVichaarCard({super.key});

  @override
  State<AddVichaarCard> createState() => _AddVichaarCardState();
}

class _AddVichaarCardState extends State<AddVichaarCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).primaryColorDark,
      elevation: 6,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              minLines: 1,
              maxLines: 1,
              style: TextStyle(
                color: Colors.white,
                decorationThickness: 0,
              ),
              decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                  filled: true,
                  fillColor: Color.fromRGBO(3, 4, 14, 0.5),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      borderSide: BorderSide.none),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6.0),
                    borderSide: BorderSide.none,
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6.0),
                    borderSide: BorderSide.none,
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: BorderSide.none,
                  ),
                  hintText: 'Title...',
                  hintStyle: TextStyle(
                    fontSize: 24.0,
                    fontFamily: 'Dongle',
                    color: Colors.grey.shade300,
                  ),
                  hintFadeDuration: Durations.medium2),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: TextField(
                maxLines: null,
                expands: true,
                style: TextStyle(
                  fontSize: 24,
                  height: 1,
                  color: Colors.white,
                  decorationThickness: 0,
                ),
                decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                    filled: true,
                    fillColor: Color.fromRGBO(3, 4, 14, 0.5),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide: BorderSide.none),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6.0),
                      borderSide: BorderSide.none,
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6.0),
                      borderSide: BorderSide.none,
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      borderSide: BorderSide.none,
                    ),
                    hintText: 'Content...',
                    hintStyle: TextStyle(
                      fontSize: 24.0,
                      fontFamily: 'Dongle',
                      color: Colors.grey.shade300,
                    ),
                    hintFadeDuration: Durations.medium2),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const FullVichaar())),
                  child: Icon(
                    Icons.expand_more_rounded,
                    color: Theme.of(context).colorScheme.onSecondary,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.add,
                  color: Theme.of(context).colorScheme.onSecondary,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
