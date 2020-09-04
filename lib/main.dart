import 'package:flutter/material.dart';
import 'package:jobber/screens/home.dart';
import 'package:jobber/screens/login.dart';
import 'package:jobber/screens/onboarding.dart';
import 'package:jobber/screens/register.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => OnboardingScreen(),
      '/login': (context) => Login(),
      '/home': (context) => Home(),
      '/register': (context) => Register(),
    },
  ));
}
