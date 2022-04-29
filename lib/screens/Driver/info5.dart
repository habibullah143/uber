// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:uberr/screens/Driver/info6.dart';
import 'package:uberr/screens/Rider/welcome%20Screens/my_app.dart';

class info5 extends StatefulWidget {
  const info5({Key? key}) : super(key: key);

  @override
  _info5State createState() => _info5State();
}

class _info5State extends State<info5> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            // padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Column(children: [
              const Image(image: AssetImage('assets/info5.png')),
              // Center(
              //   child: Text(
              //     'Search Less, Ride Fast',
              //     style: TextStyle(
              //       color: Colors.black,
              //       fontSize: 30,
              //     ),
              //   ),
              // ),
              // Text(
              //   'Enter home work or most frequented address  ',
              //   style: TextStyle(fontSize: 15),
              // ),
              // Text(
              //   "in your saved location ",
              //   style: TextStyle(fontSize: 15),
              // ),
              // SizedBox(
              //   height: 50,
              // ),
              // Container(
              //   padding: EdgeInsets.fromLTRB(20, 0, 130, 0),
              //   child: Text.rich(
              //     TextSpan(
              //       style: TextStyle(
              //         fontSize: 17,
              //       ),
              //       children: [
              //         WidgetSpan(
              //           child: Icon(
              //             Icons.home,
              //             color: Colors.red,
              //           ),
              //         ),
              //         TextSpan(
              //             text: '    Add Home Address',
              //             style: TextStyle(fontSize: 18))
              //       ],
              //     ),
              //   ),
              // ),
              // SizedBox(
              //   height: 21,
              // ),
              // Container(
              //   padding: EdgeInsets.fromLTRB(20, 0, 130, 0),
              //   child: Text.rich(
              //     TextSpan(
              //       style: TextStyle(
              //         fontSize: 17,
              //       ),
              //      children: [
              //         WidgetSpan(
              //           child: Icon(
              //             Icons.work,
              //             color: Colors.red,
              //           ),
              //         ),
              //         TextSpan(
              //             text: '      Add Work Address',
              //             style: TextStyle(fontSize: 17))
              //       ],
              //     ),
              //   ),
              // ),
              const SizedBox(
                height: 140,
              ),
              Container(
                margin: const EdgeInsets.only(left: 40, bottom: 20),
                child: Align(
                    alignment: Alignment.bottomLeft,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => const MyApp()));
                      },
                      child: const Text(
                        'Skip',
                        style: TextStyle(color: Colors.red, fontSize: 20),
                      ),
                    )),
              ),
            ]),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.red,
          onPressed: () => {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => const info6()))
          },
          tooltip: 'Increment',
          child: const Icon(Icons.arrow_forward),
        ),
      ),
    );
  }
}
