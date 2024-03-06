import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sdmpbsa/pages/welcome_screen.dart';

import '../theme/theme.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 3),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> WelcomeScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkColorScheme.shadow,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo.png', // Replace 'your_image.png' with the path to your image asset
              width: 70, // Adjust width as needed
              height: 70, // Adjust height as needed
              // You can also use other constructors like Image.network() for network images
            ),
            SizedBox(height: 20),
            Text(
              'SDM EDUCATIONAL SOCIETY(R),UJIRE - 574240',
              style: TextStyle(
                color: lightColorScheme.onPrimary,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5),
            Text(
              'PERFORMANCE BASED SELF APPRAISAL',
              style: TextStyle(
                color: lightColorScheme.onPrimary,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),SizedBox(height: 5),
            Text(
              '(TEACHING STAFF): 2023',
              style: TextStyle(
                color: lightColorScheme.onPrimary,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),

    );
  }
}
