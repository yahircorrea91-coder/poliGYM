import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'home_screen.dart';
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://lvrdunrfzfumpmnwdany.supabase.co',
    publishableKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imx2cmR1bnJmemZ1bXBtbndkYW55Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3OTI2Mzg1NTksImV4cCI6MjEwODIxNDU1OX0.28mO506dA2_I0vg5JHZo8FfUb-90TwkYTPTOR_-xPHY',
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}