# 📱 Social_Media_App

A social media app implemented with **Flutter** and **Firebase**.
Users can create a new account, login, and post on the wall.

## 🚨 Errors Occurred

### FireStore Database Issue

- ❗️ **Typo Detected**: When creating the Firestore collection, a typo in one of the fields was causing issues. This prevented accessing the instances of the `user = snapshot.data!.data()` object.
