import 'package:flutter/material.dart';

//display message to user

void displayMessageToUser(String message, BuildContext context) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: const Text("Error"),
      content: const Text("Passwords do not match"),
      actions: [
        TextButton(
          child: const Text("Ok"),
          onPressed: () {
            Navigator.pop(context);
          },
        )
      ],
    ),
  );
}
