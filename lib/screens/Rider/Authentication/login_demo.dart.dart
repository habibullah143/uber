// ignore_for_file: deprecated_member_use, unused_import

import 'dart:ui';

// import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:uberr/screens/Rider/Map%20Screens/home.dart';
// import 'package:uberr/screens/Driver/Driver%20Authentication/sginupdriver.dart';
import 'package:uberr/screens/fingure_auth/fingureprint_page.dart';
import 'forgotpassword.dart';
import 'touch_signin.dart';
import 'package:uberr/screens/Rider/Map Screens/home.dart';

class LoginDemo extends StatefulWidget {
  const LoginDemo({Key? key}) : super(key: key);
  static String loginDemo = 'loginDemo';
  @override
  _LoginDemoState createState() => _LoginDemoState();
}

class _LoginDemoState extends State<LoginDemo> {
  final _formKey = GlobalKey<FormState>();

  var email = "";
  var password = "";
  // Create a text controller and use it to retrieve the current value
  // of the TextField.
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  userLogin() async {
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => Homepage(),
        ),
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print("No User Found for that Email");
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: Colors.orangeAccent,
            content: Text(
              "No User Found for that Email",
              style: TextStyle(fontSize: 18.0, color: Colors.black),
            ),
          ),
        );
      } else if (e.code == 'wrong-password') {
        print("Wrong Password Provided by User");
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: Colors.orangeAccent,
            content: Text(
              "Wrong Password Provided by User",
              style: TextStyle(fontSize: 18.0, color: Colors.black),
            ),
          ),
        );
      }
    }
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  final emaill = TextEditingController();
  final passward = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
          backgroundColor: Colors.white,
          resizeToAvoidBottomInset: false,
          body: SingleChildScrollView(
              child: Column(children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 0.0),
              child: Center(
                child: Image.asset('assets/3.png'),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: TextFormField(
                autofocus: false,
                decoration: InputDecoration(
                  labelText: 'Email: ',
                  labelStyle: TextStyle(fontSize: 20.0),
                  border: OutlineInputBorder(),
                  errorStyle: TextStyle(color: Colors.redAccent, fontSize: 15),
                ),
                controller: emailController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please Enter Email';
                  } else if (!value.contains('@')) {
                    return 'Please Enter Valid Email';
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 25.0, right: 25.0, top: 15, bottom: 0),
              child: TextFormField(
                autofocus: false,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password: ',
                  labelStyle: TextStyle(fontSize: 20.0),
                  border: OutlineInputBorder(),
                  errorStyle: TextStyle(color: Colors.redAccent, fontSize: 15),
                ),
                controller: passwordController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please Enter Password';
                  }
                  return null;
                },
              ),
            ),
            FlatButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ForgotPassword(),
                  ),
                );
              },
              child: const Text(
                'Forgot Password?',
                style: TextStyle(color: Colors.grey, fontSize: 15),
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Validate returns true if the form is valid, otherwise false.
                      if (_formKey.currentState!.validate()) {
                        setState(() {
                          email = emailController.text;
                          password = passwordController.text;
                        });
                        userLogin();
                      }
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                          if (states.contains(MaterialState.pressed))
                            return Colors.red;
                          return Colors.red; // Use the component's default.
                        },
                      ),
                    ),
                    child: Text(
                      'Login',
                      style: TextStyle(fontSize: 18.0),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => FingerprintPage(
                              routeNmae: Homepage.home,
                            )));
              },
              child: RichText(
                text: const TextSpan(
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 17.0,
                  ),
                  text: 'Login With TouchID ',
                  children: <TextSpan>[
                    TextSpan(
                      style: TextStyle(
                        fontFamily: 'MaterialIcons', //<-- fontFamily
                        fontSize: 20.0,
                        color: Colors.red,
                      ),
                    )
                  ],
                ),
              ),
            )
          ]))),
    );
  }
}
