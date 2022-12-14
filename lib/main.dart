import 'package:flutter/material.dart';
import 'package:giroux_autocar/pages/Choose%20a%20vehicle.dart';

import 'package:giroux_autocar/pages/Login.dart';
import 'package:giroux_autocar/pages/floatMenu.dart';
import 'package:giroux_autocar/pages/onboarding1.dart';

import 'home.dart';
import 'pages/Signup.dart';
import 'pages/Verification.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FloatMenu(),
    );
  }
}
