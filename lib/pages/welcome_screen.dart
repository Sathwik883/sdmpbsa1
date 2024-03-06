import 'package:flutter/material.dart';
import 'package:sdmpbsa/pages/signin_screen.dart';

import '../admin/admin.dart';
import '../widgets/custom_scaffold.dart';
import '../widgets/welcome_button.dart';
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      child: Column(
        children: [
          Image.asset(
            'assets/images/logo.png', // Replace 'your_image.png' with the path to your image asset
            width: 80, // Adjust width as needed
            height: 80, // Adjust height as needed
            // You can also use other constructors like Image.network() for network images
          ),
          SizedBox(height: 20),
          Flexible(
              flex: 0,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 0,
                  horizontal: 40.0,
                ),
                child: Center(
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                      children: [
                        TextSpan(
                            text: 'Welcome Back!\n',
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.w600,
                            )),
                        TextSpan(
                            text:
                            '\nEnter personal details to your employee account',
                            style: TextStyle(
                              fontSize: 20,
                              // height: 0,
                            ))
                      ],
                    ),
                  ),
                ),
              )),
          Flexible(
            flex: 1,
            child: Align(
              alignment: Alignment.bottomRight,
              child: Row(
                children: [
                  Expanded(
                    child: WelcomeButton(
                      buttonText: 'Sign in',
                      onTap: SignInScreen(),
                      color: Colors.transparent,
                      textColor: Colors.white,
                    ),
                  ),
                  Expanded(
                    child: WelcomeButton(
                      buttonText: 'Admin',
                      onTap: Admin(),
                      color: Colors.transparent,
                      textColor: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
