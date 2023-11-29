import 'package:flutter/material.dart';

class HouseTile extends StatelessWidget {
  final String name;
  final int numbetOfFloor;
  const HouseTile({super.key, required this.name, required this.numbetOfFloor});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 28,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text(name), Text('Number of floor $numbetOfFloor')],
        ),
      ),
    );
  }
}
