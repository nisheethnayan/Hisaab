import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CreditsCard extends StatefulWidget {
  const CreditsCard({super.key});

  @override
  State<CreditsCard> createState() => _CreditsCardState();
}

Future<void> launchURL(String url) async {
  final Uri uri = Uri.parse(url);

  if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
    throw Exception('Could not launch $uri');
  }
}

class _CreditsCardState extends State<CreditsCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Theme.of(context).colorScheme.primary,
      shape: RoundedRectangleBorder(
        side: BorderSide(
            color: Theme.of(context).colorScheme.secondary, width: 2),
        borderRadius: BorderRadius.all(Radius.circular(4)),
      ),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Center(
              child: Text(
                'NISHEETH NAYAN',
                style: Theme.of(context).textTheme.displayMedium,
              ),
            ),
            Center(
              child: Text(
                'ko follow bhi karle bhai ab',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () async {
                    await launchURL('https://instagram.com/nisheeth_nayan');
                  },
                  child: Image.asset(
                    "assets/images/instagram.png",
                    width: 48,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
                GestureDetector(
                  onTap: () async {
                    launchURL('https://github.com/nisheethnayan');
                  },
                  child: Image.asset(
                    "assets/images/github.png",
                    width: 50,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
                GestureDetector(
                  onTap: () async {
                    launchURL('https://threads.net/@nisheeth_nayan');
                  },
                  child: Image.asset(
                    "assets/images/threads.png",
                    width: 48,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
                GestureDetector(
                  onTap: () async {
                    launchURL('https://snapchat.com/add/nisheethnayan');
                  },
                  child: Image.asset(
                    "assets/images/snapchat.png",
                    width: 48,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
                GestureDetector(
                  onTap: () async {
                    launchURL('https://twitter.com/NisheethNayan');
                  },
                  child: Image.asset(
                    "assets/images/x.png",
                    width: 48,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
