// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import '../welcome Screens/address.dart';

class page4 extends StatefulWidget {
  const page4({Key? key}) : super(key: key);

  @override
  _page4State createState() => _page4State();
}

class _page4State extends State<page4> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
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
            'Repeatedly place your finger on the finger print on the  ',
            style: TextStyle(fontSize: 15),
          ),
          const Text(
            "will be send for verification",
            style: TextStyle(fontSize: 15),
          ),
          const SizedBox(
            height: 150,
          ),
          GestureDetector(
            child: const Icon(
              Icons.fingerprint_rounded,
              size: 100,
            ),
          ),
          const SizedBox(
            height: 200,
          ),
          Container(
            margin: const EdgeInsets.only(left: 50, bottom: 20),
            child: const Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Skip',
                  style: TextStyle(color: Colors.red, fontSize: 20),
                )),
          ),
        ]),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.red,
          onPressed: () => {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => const page5()))
          },
          tooltip: 'Increment',
          child: const Icon(Icons.arrow_forward),
        ),
      ),
    );
  }
}
