import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shamo/shared/theme.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  SplashPageState createState() => SplashPageState();
}

class SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    _navigateToSignInPage();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor1,
      body: Center(
        child: _buildSplashImage(),
      ),
    );
  }

  Widget _buildSplashImage() {
    return Container(
      width: 130,
      height: 150,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/splash.png'),
        ),
      ),
    );
  }

  void _navigateToSignInPage() {
    Timer(
      const Duration(seconds: 3),
      () {
        Navigator.pushNamedAndRemoveUntil(
            context, '/sign-in', (route) => false);
      },
    );
  }
}
