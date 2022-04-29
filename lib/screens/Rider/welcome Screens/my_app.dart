/// ignore: unused_import
// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:uberr/screens/Rider/Authentication/signup.dart';

import '../Authentication/login_demo.dart.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.white,
          body: Container(
            color: Colors.white,
            child: Column(
              children: [
                const SizedBox(
                  height: 200,
                ),
                const Center(
                  child: Text(
                    'Welcome!',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 26,
                    ),
                  ),
                ),
                const Text('Choose a signup option button'),
                const SizedBox(
                  height: 45,
                ),
                RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  splashColor: Colors.pinkAccent,
                  color: Colors.red,
                  child: const Text(
                    "create an account",
                    style: TextStyle(fontSize: 20.0, color: Colors.white),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => signup()));
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                const SizedBox(
                  height: 50,
                ),
                const Text.rich(
                  TextSpan(
                    style: TextStyle(
                      fontSize: 17,
                    ),
                    children: [
                      TextSpan(),
                      WidgetSpan(
                        child: Icon(Icons.app_blocking),
                      ),
                      TextSpan(
                        text: 'Continue with Apple',
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                const Text.rich(
                  TextSpan(
                    style: TextStyle(
                      fontSize: 17,
                    ),
                    children: [
                      TextSpan(),
                      WidgetSpan(
                        child: Icon(Icons.facebook),
                      ),
                      TextSpan(
                        text: 'Continue with Facebook',
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                const Text.rich(
                  TextSpan(
                    style: TextStyle(
                      fontSize: 17,
                    ),
                    children: [
                      TextSpan(),
                      WidgetSpan(
                        child: Icon(Icons.browser_not_supported),
                      ),
                      TextSpan(
                        text: 'Continue with Google',
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginDemo()));
                  },
                  child: const Text(
                    'Already have an account?',
                  ),
                )
              ],
            ),
          )),
    );
  }
}
