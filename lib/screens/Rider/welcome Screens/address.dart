// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

import 'profile_picture.dart';

class page5 extends StatefulWidget {
  const page5({Key? key}) : super(key: key);

  @override
  _page5State createState() => _page5State();
}

class _page5State extends State<page5> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Column(children: [
              const SizedBox(
                height: 50,
              ),
              const Image(image: AssetImage('assets/1.png')),
              const SizedBox(
                height: 30,
              ),
              const Center(
                child: Text(
                  'Search Less, Ride Fast',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'Enter home work or most frequented address  ',
                style: TextStyle(fontSize: 15),
              ),
              const Text(
                "in your saved location ",
                style: TextStyle(fontSize: 15),
              ),
              Container(
                margin: const EdgeInsets.only(top: 70, bottom: 130),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text.rich(
                      TextSpan(
                        style: TextStyle(
                          fontSize: 17,
                        ),
                        children: [
                          WidgetSpan(
                            child: Icon(
                              Icons.home,
                              color: Colors.red,
                            ),
                          ),
                          TextSpan(
                              text: '    Add Home Address',
                              style: TextStyle(fontSize: 18))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 21,
                    ),
                    Text.rich(
                      TextSpan(
                        style: TextStyle(
                          fontSize: 17,
                        ),
                        children: [
                          WidgetSpan(
                            child: Icon(
                              Icons.work,
                              color: Colors.red,
                            ),
                          ),
                          TextSpan(
                              text: '     Add Work Address',
                              style: TextStyle(fontSize: 17))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 40, bottom: 20),
                child: const Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      'Skip',
                      style: TextStyle(color: Colors.red, fontSize: 20),
                    )),
              ),
            ]),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.red,
          onPressed: () => {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => const page6()))
          },
          tooltip: 'Increment',
          child: const Icon(Icons.arrow_forward),
        ),
      ),
    );
  }
}
