import 'package:flutter/material.dart';
import 'package:hisaab/vichaar_comps/full_vichaar.dart';

class VichaarCard extends StatefulWidget {
  const VichaarCard({super.key});

  @override
  State<VichaarCard> createState() => _VichaarCardState();
}

class _VichaarCardState extends State<VichaarCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => Navigator.push(context,
            MaterialPageRoute(builder: (context) => const FullVichaar())),
        child: Column(
          children: [
            SizedBox(
              width: MediaQuery.sizeOf(context).width,
              child: Card(
                margin: EdgeInsets.symmetric(vertical: 0, horizontal: 4),
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(8))),
                color: Theme.of(context).primaryColorDark,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(16, 8, 16, 4),
                  child: Text("Title",
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          fontSize: 28,
                          fontWeight: FontWeight.w700,
                          color: Colors.white)),
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.sizeOf(context).width,
              child: Card(
                margin: EdgeInsets.symmetric(vertical: 1, horizontal: 4),
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(8),
                        bottomRight: Radius.circular(8))),
                color: Theme.of(context).primaryColorDark,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(16, 4, 16, 8),
                  child: Text(
                    "nadfjknjkabgjkdsbgkjsbjkgbsdkjbgkjsbgkjsbkgjsjknjkabgjkdsbgkjsbjkgbsdkjbgkjsbgkjsbkgjsjknjkabgjkdsbgkjsbjkgbsdkjbgkjsbgkjsbkgjsjknjkabgjkdsbgkjsbjkgbsdkjbgkjsbgkjsbkgjsjknjkabgjkdsbgkjsbjkgbsdkjbgkjsbgkjsbkgjs",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            )
          ],
        ));
  }
}
