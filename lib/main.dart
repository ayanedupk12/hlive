import 'package:flutter/material.dart';
import 'package:hllive/views/screens/LoginScreen/LoginScreen.dart';
import 'package:hllive/views/screens/SignUpScreen/SignUpScreen.dart';

import 'views/screens/dashboard/dashboard_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  LoginScreen(),
      // home:  SignUpScreen(),
      // home: const DashboardScreen(),
    );
  }
}
