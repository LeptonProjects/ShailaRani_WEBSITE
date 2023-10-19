import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:shaila_rani_website/view/Login_dashBoard/login_dashBoard.dart';
import 'firebase_options.dart';
  import 'dart:html' as html; // Import the 'html' package
Future<void> main() async{
   html.document.title = 'Adv. Shaila Rani';
  WidgetsFlutterBinding.ensureInitialized();
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
       title:'Adv Shaila Rani Associates',
      debugShowCheckedModeBanner: false,
      home: LoginDashBoard(),
    );
  }
}

