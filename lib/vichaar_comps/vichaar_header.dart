import 'package:flutter/material.dart';
import 'package:hisaab/profile.dart';

class VichaarHeader extends StatefulWidget {
  const VichaarHeader({super.key});

  @override
  State<VichaarHeader> createState() => _VichaarHeaderState();
}

class _VichaarHeaderState extends State<VichaarHeader> {
  @override
  Widget build(BuildContext context) {
    return Row(
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
                  ?.copyWith(color: Theme.of(context).colorScheme.secondary),
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
    );
  }
}
