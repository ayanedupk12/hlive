import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'core/constant/colors.dart';
import 'views/screens/dashboard/dashboard_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hi Live',
      theme: ThemeData(
        scaffoldBackgroundColor: primaryColor,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      //home: LoginScreen(),
      // home:  SignUpScreen(),
      home: const DashboardScreen(),
    );
  }
}
