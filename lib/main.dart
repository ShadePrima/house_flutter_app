import 'package:flutter/material.dart';
import 'package:house_flutter_app/pages/home_page.dart';
import 'pages/start_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'House App',
      home: const StartPage(),
      theme: ThemeData(primarySwatch: Colors.grey),
      routes: {'/homepage': (context) => const HomePage()},
    );
  }
}
