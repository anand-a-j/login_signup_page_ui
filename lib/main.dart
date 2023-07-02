import 'package:flutter/material.dart';
import 'package:login_signup_ui/screens/login_signup_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Login/Signup',
      home: LoginSignupPage(),
    );
  }
}
