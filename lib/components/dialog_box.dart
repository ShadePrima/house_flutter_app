import 'package:flutter/material.dart';

class DialogBox extends StatelessWidget {
  final TextEditingController controller;
  final VoidCallback onSave;
  final VoidCallback onCancel;

  const DialogBox(
      {super.key,
      required this.controller,
      required this.onSave,
      required this.onCancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.grey,
      content: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(0),
        ),
        height: 185,
        child: Column(
          children: [
            const Text('Add house'),
            const SizedBox(
              height: 25,
            ),
            //input name house
            Row(
              children: [
                const Text('Name'),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                    child: Container(
                  height: 40,
                  child: const TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                ))
              ],
            ),

            const SizedBox(
              height: 25,
            ),
            //input count floor
            Row(
              children: [
                const Text('Floors count'),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                    child: Container(
                  height: 40,
                  width: 30,
                  child: const TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
