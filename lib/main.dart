import 'package:flutter/material.dart';
import 'package:todo/screen/homescreen.dart';
import 'package:todo/screen/loginscreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:todo/screen/signupscreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:todo/screen/loginscreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SignupScreen(),
    );
  }
}
