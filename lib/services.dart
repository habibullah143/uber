// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_database/firebase_database.dart';
// import 'package:flutter/material.dart';

// class firebaseServices {
//   FirebaseAuth firebaseAuth = FirebaseAuth.instance;
//   var uid = FirebaseAuth.instance.currentUser;
//   var result;
//   final databaseReference = FirebaseDatabase.instance.reference();
//   FirebaseFirestore firestore = FirebaseFirestore.instance;
//   DateTime now = DateTime.now();
//   CollectionReference users = FirebaseFirestore.instance.collection('meetings');

//   Future<void> addMeetingInFirebase(subject, id, email) {
//     var time = now.hour.toString() +
//         ":" +
//         now.minute.toString() +
//         ":" +
//         now.second.toString();

//     // Call the user's CollectionReference to add a new user
//     return users
//         .add({'Subject': subject, 'ID': id, 'time': time, 'email': email})
//         .then((value) => print("User Added"))
//         .catchError((error) => print("Failed to add user: $error"));
//   }

//   //Email-Password Login
//   emailLogin(email, password) async {
//     try {
//       UserInfo userCredential = await FirebaseAuth.instance
//           .signInWithEmailAndPassword(email: email, password: password);
//       if (userCredential.uid != null) {
//         return userCredential;
//       } else {
//         print("Something Went Wrong");
//         return null;
//       }
//     } on AuthException catch (e) {
//       if (e.code == 'user-not-found') {
//         return null;
//       } else if (e.code == 'wrong-password') {
//         return null;
//       }
//     }
//   }
//   //Email Password Registation

 
