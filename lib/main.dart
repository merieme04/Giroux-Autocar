import 'package:flutter/material.dart';
import 'package:giroux_autocar/pages/Choose%20a%20vehicle.dart';

import 'package:giroux_autocar/pages/Login.dart';
import 'package:giroux_autocar/pages/onboarding1.dart';

import 'pages/Signup.dart';
import 'pages/Verification.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}
