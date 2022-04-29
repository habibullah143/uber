// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:uberr/screens/Driver/info4.dart';

import 'info1.dart';

class chose extends StatefulWidget {
  const chose({Key? key}) : super(key: key);

  @override
  _choseState createState() => _choseState();
}

class _choseState extends State<chose> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Container(
            color: Colors.white,
            child: Column(
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => const info1()));
                    },
                    child: SizedBox(
                        height: MediaQuery.of(context).size.height / 2,
                        width: MediaQuery.of(context).size.width,
                        child:
                            const Image(image: AssetImage("assets/ride.png")))),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context, MaterialPageRoute(builder: (_) => info4()));
                    },
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height / 2.5,
                      width: MediaQuery.of(context).size.width,
                      child: const Image(image: AssetImage("assets/drive.png")),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
