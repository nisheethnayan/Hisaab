import 'package:flutter/material.dart';
import 'package:hisaab/profile.dart';

class VichaarPage extends StatefulWidget {
  const VichaarPage({super.key});

  @override
  State<VichaarPage> createState() => _VichaarPageState();
}

class _VichaarPageState extends State<VichaarPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Profile()));
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
              elevation: 6,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextField(
                      minLines: 1,
                      maxLines: 1,
                      style: TextStyle(
                        color: Colors.black,
                        decorationThickness: 0,
                      ),
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 12, horizontal: 16),
                          filled: true,
                          fillColor: Colors.white,
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
                            color: Colors.grey,
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
                          height: 0.6,
                          color: Colors.black,
                          decorationThickness: 0,
                        ),
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 12, horizontal: 16),
                            filled: true,
                            fillColor: Colors.white,
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
                              color: Colors.grey,
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
                        child: Icon(
                          Icons.expand_more_rounded,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.add,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
