import 'package:flutter/material.dart';
import 'package:socialmediaapp/components/MyButton.dart';
import 'package:socialmediaapp/components/MyTextField.dart';

import 'package:firebase_auth/firebase_auth.dart';

import '../helper/HelperFunctions.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;
  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController userNameController = TextEditingController();

  TextEditingController confirmPasswordController = TextEditingController();

  void registerUser() {
    // show loading circle
    showDialog(
      context: context,
      builder: (context) => const Center(
        child: CircularProgressIndicator(),
      ),
    );

    // make sure passwords map
    if (passwordController.text != confirmPasswordController.text) {
      // pop loading circle
      Navigator.pop(context);
      // show error message to user
      displayMessageToUser("Passwords dont match!", context);
    }
    // try creating the user
    try {} catch (error) {}
  }

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
              // User Name text field
              MyTextField(
                hintText: "Username",
                obscureText: false,
                controller: userNameController,
              ),
              const SizedBox(height: 10),
              // Email text field
              MyTextField(
                hintText: "Emal",
                obscureText: false,
                controller: emailController,
              ),
              const SizedBox(height: 10),
              // password text field
              MyTextField(
                hintText: "Password",
                obscureText: true,
                controller: passwordController,
              ),
              const SizedBox(height: 10),
              // confirm password field
              MyTextField(
                hintText: "Confirm Password",
                obscureText: true,
                controller: confirmPasswordController,
              ),
              const SizedBox(height: 25),
              // sign in button
              MyButton(
                text: "Register",
                onTap: registerUser,
              ),
              const SizedBox(height: 10),
              // blurb
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account?",
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary),
                  ),
                  GestureDetector(
                    onTap: widget.onTap,
                    child: const Text(
                      " Login Here",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
