import 'package:flutter/material.dart';

class ProfileHeader extends StatefulWidget {
  const ProfileHeader({super.key});

  @override
  State<ProfileHeader> createState() => _ProfileHeaderState();
}

class _ProfileHeaderState extends State<ProfileHeader> {
  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
