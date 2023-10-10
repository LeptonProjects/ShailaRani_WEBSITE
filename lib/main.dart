import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:shaila_rani_website/view/home/main_screen.dart';
import 'firebase_options.dart';

Future<void> main() async{
await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}

