import 'package:flutter/material.dart';
import 'package:hisaab/main.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

Future<void> launchURL(String url) async {
  final Uri uri = Uri.parse(url);

  if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
    throw Exception('Could not launch $uri');
  }
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Stack(
            alignment: Alignment.center,
            clipBehavior: Clip.none,
            children: [
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Profile',
                              style: Theme.of(context).textTheme.displayMedium,
                            ),
                            Text(
                              '& Settings',
                              style: Theme.of(context).textTheme.displayMedium,
                            ),
                          ],
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Image.asset(
                            "assets/images/arrow.png",
                            width: 48,
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Name",
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        Text(
                          'Nisheeth Nayan',
                          style: Theme.of(context).textTheme.bodyLarge,
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Password",
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        Text(
                          'hash lega?',
                          style: Theme.of(context).textTheme.bodyLarge,
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Kitne Hisaab?",
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        Text(
                          '2',
                          style: Theme.of(context).textTheme.bodyLarge,
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Kitna Hisaab?",
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        Text(
                          '+18000   -130',
                          style: Theme.of(context).textTheme.bodyLarge,
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Kitne Vichaar?",
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        Text(
                          '2',
                          style: Theme.of(context).textTheme.bodyLarge,
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Light Mode",
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            // Toggle between light, dark, and system modes
                            Provider.of<ThemeNotifier>(context, listen: false)
                                .setThemeMode(ThemeMode.light);
                          },
                          child: const Icon(Icons.light_mode_rounded),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Dark Mode",
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Provider.of<ThemeNotifier>(context, listen: false)
                                .setThemeMode(ThemeMode.dark);
                          },
                          child: const Icon(Icons.dark_mode_rounded),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "System Theme",
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        ElevatedButton(
                          style: Theme.of(context).elevatedButtonTheme.style,
                          onPressed: () {
                            Provider.of<ThemeNotifier>(context, listen: false)
                                .setThemeMode(ThemeMode.system);
                          },
                          child: const Icon(Icons.color_lens_rounded),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 160,
                    ),
                    Card(
                      elevation: 0,
                      color: Theme.of(context).colorScheme.primary,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                            color: Theme.of(context).primaryColorDark,
                            width: 2),
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(16),
                        child: Column(
                          children: [
                            Center(
                              child: Text(
                                'NISHEETH NAYAN',
                                style:
                                    Theme.of(context).textTheme.displayMedium,
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
                                    await launchURL(
                                        'https://instagram.com/nisheeth_nayan');
                                  },
                                  child: Image.asset(
                                    "assets/images/instagram.png",
                                    width: 48,
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                  ),
                                ),
                                Image.asset(
                                  "assets/images/github.png",
                                  width: 50,
                                  color:
                                      Theme.of(context).colorScheme.secondary,
                                ),
                                Image.asset(
                                  "assets/images/threads.png",
                                  width: 48,
                                  color:
                                      Theme.of(context).colorScheme.secondary,
                                ),
                                Image.asset(
                                  "assets/images/snapchat.png",
                                  width: 48,
                                  color:
                                      Theme.of(context).colorScheme.secondary,
                                ),
                                Image.asset(
                                  "assets/images/x.png",
                                  width: 48,
                                  color:
                                      Theme.of(context).colorScheme.secondary,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
