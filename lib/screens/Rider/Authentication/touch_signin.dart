// ignore_for_file: camel_case_types, deprecated_member_use

// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:uberr/screens/Rider/Map%20Screens/home.dart';

class page8 extends StatefulWidget {
  const page8({Key? key}) : super(key: key);

  @override
  _page8State createState() => _page8State();
}

class _page8State extends State<page8> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
            elevation: 0.0,
            backgroundColor: Colors.transparent,
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Homepage()));
              },
            )),
        body: Column(children: [
          const SizedBox(
            height: 150,
          ),
          const Center(
            child: Text(
              'Set Touch ID',
              style: TextStyle(
                color: Colors.red,
                fontSize: 36,
              ),
            ),
          ),
          const Text(
            'Place your finger on the fingerprint  ',
            style: TextStyle(fontSize: 14),
          ),
          const Text(
            "reader on your mobile to sign in",
            style: TextStyle(fontSize: 14),
          ),
          const Text(
            'to your account  ',
            style: TextStyle(fontSize: 14),
          ),
          const SizedBox(
            height: 130,
          ),
          GestureDetector(
            child: const Icon(
              Icons.fingerprint_rounded,
              color: Colors.red,
              size: 100,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Container(
            height: 50,
            width: 250,
            decoration: BoxDecoration(
                color: Colors.red, borderRadius: BorderRadius.circular(20)),
            child: FlatButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const Homepage()));
              },
              child: const Text(
                'Login',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          RichText(
            text: const TextSpan(
              style: TextStyle(
                color: Colors.grey,
                fontSize: 17.0,
              ),
              text: 'Login With Password Instead ',
              children: <TextSpan>[
                TextSpan(
                  style: TextStyle(
                    fontFamily: 'MaterialIcons',
                    fontSize: 20.0,
                    color: Colors.red,
                  ),
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
