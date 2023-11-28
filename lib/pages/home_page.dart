import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                const SizedBox(
                  height: 250,
                ),
                //name app
                const Text(
                  "Test Task",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Inter',
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(
                  height: 47,
                ),

                //image in main page
                Image.asset(
                  'lib/images/cat.png',
                ),
                const SizedBox(
                  height: 30,
                ),

                //button Enter
                GestureDetector(
                  onTap: () {},
                  child: Container(
                      height: 57,
                      width: 228,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(color: Colors.black)),
                      child: const Center(
                          child: Text(
                        'Enter',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ))),
                ),
              ],
            ),
            const Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: EdgeInsets.all(25.0),
                  child: Text("disinged by Alex"),
                ))
          ],
        ),
      ),
    );
  }
}
