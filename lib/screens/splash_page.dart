import 'dart:async';

import 'package:flutter/material.dart';
import 'package:users/constants/styles.dart';
import 'package:users/constants/variables.dart';
import 'package:users/screens/create_user_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: splashDuration),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const CreateUser())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Text(
        splashMessage,
        style: splashStyle,
      ),
    ));
  }
}
