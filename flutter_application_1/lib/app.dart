import 'package:flutter/material.dart';
import 'package:flutter_application_1/home_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Counter App",
      debugShowCheckedModeBanner: false,
      home: HomeScreen()
    );
  }
}
