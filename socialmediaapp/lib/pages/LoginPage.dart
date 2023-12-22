import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // logo
            Icon(
              Icons.account_circle,
              size: 100,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            //app name

            // email text field

            // password text field

            // forgot password

            // sign in button

            // blurb
          ],
        ),
      ),
    );
  }
}
