import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:socialmediaapp/components/MyDrawer.dart';
import 'package:socialmediaapp/components/MyPostButton.dart';
import 'package:socialmediaapp/components/MyTextField.dart';
import 'package:socialmediaapp/database/firestore.dart';

class HomePage extends StatelessWidget {
  // Firestore Access
  final firestoreDatabase database = firestoreDatabase();
  // Text Controller
  TextEditingController newPostController = TextEditingController();

  HomePage({super.key});
  // post message
  void postMessage() {
    if (newPostController.text.isNotEmpty) {
      String message = newPostController.text;
      database.addPost(message);
    }

    // clear the controller
    newPostController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: const Text("W A L L"),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      drawer: const MyDrawer(),
      body: Column(
        children: [
          // Text Field box for user to type
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Row(
              children: [
                // textfield
                Expanded(
                  child: MyTextField(
                    hintText: "say somethong",
                    obscureText: false,
                    controller: newPostController,
                  ),
                ),
                // post button
                MyPostButton(
                  onTap: postMessage,
                )
              ],
            ),
          ),
          // POSTS
          // StreamBuilder(
          //   stream: database.getPostsStream(),
          //   builder: (context, snapshot) {
          //     // show loading circle
          //     if (snapshot.connectionState == ConnectionState.waiting) {
          //       return const Center(
          //         child: CircularProgressIndicator(),
          //       );
          //     }
          //     // get all posts

          //     // no data>

          //     // return as a list
          //   },
          // )
        ],
      ),
    );
  }
}
