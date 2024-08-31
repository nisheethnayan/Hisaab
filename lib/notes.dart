import 'package:flutter/material.dart';
import 'package:hisaab/profile.dart';

class Notes extends StatefulWidget {
  const Notes({super.key});

  @override
  State<Notes> createState() => _NotesState();
}

class _NotesState extends State<Notes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
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
              width: MediaQuery.sizeOf(context).width,
              child: Card(
                color: Theme.of(context).colorScheme.secondary,
                elevation: 6,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [TextField(), TextField()],
                  ),
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
