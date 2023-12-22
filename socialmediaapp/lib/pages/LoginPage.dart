import 'package:flutter/material.dart';
import 'package:socialmediaapp/components/MyTextField.dart';

class LoginPage extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // logo
              Icon(
                Icons.person,
                size: 80,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
              const SizedBox(height: 25),
              //app name
              const Text(
                "M I N I M A L",
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 40),
              // email text field
              MyTextField(
                  hintText: "", obscureText: false, controller: emailController)
              // password text field

              // forgot password

              // sign in button

              // blurb
            ],
          ),
        ),
      ),
    );
  }
}
