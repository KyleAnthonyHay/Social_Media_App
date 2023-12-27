import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:flutter/material.dart';
import 'package:socialmediaapp/helper/HelperFunctions.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Users "),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        elevation: 0,
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: StreamBuilder(
          stream: FirebaseFirestore.instance.collection("Users").snapshots(),
          builder: (context, snapshot) {
            // any errors
            if (snapshot.hasError) {
              displayMessageToUser("Something went wrong", context);
            }
            // show loading circle
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            if (snapshot.data == null) {
              return const Text("No Data");
            }
            // get all users
            final users = snapshot.data!.docs;

            return ListView.builder(
                itemCount: users.length,
                itemBuilder: (context, index) {
                  // get individual user
                  final user = users[index];

                  return ListTile(
                    title: Text(user['username']),
                    subtitle: Text(user['email']),
                  );
                });
          }),
    );
  }
}
