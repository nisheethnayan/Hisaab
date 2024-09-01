import 'package:flutter/material.dart';
import 'package:hisaab/main.dart';
import 'package:hisaab/profile_comps/credits_card.dart';
import 'package:hisaab/profile_comps/profile_header.dart';
import 'package:provider/provider.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

bool lightIsActive = false;
bool darkIsActive = false;
bool systemIsActive = false;

void setActive(context, ThemeMode mode) {
  Provider.of<ThemeNotifier>(context, listen: false).setThemeMode(mode);
  if (mode == ThemeMode.light) {
    lightIsActive = true;
    darkIsActive = false;
    systemIsActive = false;
  } else if (mode == ThemeMode.dark) {
    lightIsActive = false;
    darkIsActive = true;
    systemIsActive = false;
  } else {
    lightIsActive = false;
    darkIsActive = false;
    systemIsActive = true;
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
                    ProfileHeader(),
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
                            setActive(context, ThemeMode.light);
                          },
                          child: lightIsActive
                              ? Icon(
                                  Icons.check_circle_outline_rounded,
                                  color: Colors.white,
                                )
                              : Icon(Icons.light_mode_rounded),
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
                            setActive(context, ThemeMode.dark);
                          },
                          child: darkIsActive
                              ? Icon(
                                  Icons.check_circle_outlined,
                                  color: Color.fromRGBO(41, 95, 152, 1),
                                )
                              : Icon(Icons.dark_mode_rounded),
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
                            setActive(context, ThemeMode.system);
                          },
                          child: systemIsActive
                              ? Icon(Icons.check_circle_outlined)
                              : Icon(Icons.color_lens_rounded),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 160,
                    ),
                    CreditsCard(),
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
