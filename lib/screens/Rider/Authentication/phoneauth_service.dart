// // ignore_for_file: prefer_function_declarations_over_variables

// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:uberr/screens/Rider/Authentication/test_file.dart';

// // ignore: duplicate_ignore
// class PhoneAuthService {
//   FirebaseAuth auth = FirebaseAuth.instance;
//   // ignore: prefer_function_declarations_over_variables
//   Future<void> verifyPhoneNumber(BuildContext context, number) async {
//     // ignore: unused_local_variable
//     PhoneVerificationCompleted verificationCompleted =
//         (PhoneAuthCredential credential) async {
//       await auth.signInWithCredential(credential);
//     };

//     final PhoneVerificationFailed verificationFailed =
//         (FirebaseAuthException e) {
//       if (e.code == 'invalid-phone-number') {
//         print('The provided phone number is not valid.');
//       }
//       print('The errors is ${e.code}');
//     };
//     final PhoneCodeSent codeSent =
//         (String verificationId, int? resendToken) async {
//       Navigator.push(context,
//           MaterialPageRoute(builder: ((context) => Testfile())));
//     };
//     try {
//       auth.verifyPhoneNumber(
//         phoneNumber: number,
//         verificationCompleted: verificationCompleted,
//         verificationFailed: verificationFailed,
//         codeSent: codeSent,
//         timeout: const Duration(seconds: 60),
//         codeAutoRetrievalTimeout: (String verificationId) {
//           print(verificationId);
//         },
//       );
//     } catch (e) {
//       print('Error ${e.toString()}');
//     }
//   }
// }
