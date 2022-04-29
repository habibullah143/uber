// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

import '../Authentication/login_demo.dart.dart';

class page6 extends StatefulWidget {
  const page6({Key? key}) : super(key: key);

  @override
  _page6State createState() => _page6State();
}

class _page6State extends State<page6> {
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
                height: 80,
              ),
              const Image(image: AssetImage('assets/2.png')),
              const SizedBox(
                height: 30,
              ),
              const Center(
                child: Text(
                  'Adding Photos Ease Pickups',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                  ),
                ),
              ),
              const Text(
                'Drivers often use your profile picture to confirm   ',
                style: TextStyle(fontSize: 15),
              ),
              const Text(
                "that you are the correct rider ",
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
                              Icons.photo,
                              color: Colors.red,
                            ),
                          ),
                          TextSpan(
                              text: '    Take Photo',
                              style: TextStyle(fontSize: 18))
                        ],
                      ),
                    ),
                    Text.rich(
                      TextSpan(
                        style: TextStyle(
                          fontSize: 17,
                        ),
                        children: [
                          WidgetSpan(
                            child: Icon(
                              Icons.library_add,
                              color: Colors.red,
                            ),
                          ),
                          TextSpan(
                              text: '    Choose From Library',
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
                context, MaterialPageRoute(builder: (_) => LoginDemo()))
          },
          tooltip: 'Increment',
          child: const Icon(Icons.arrow_forward),
        ),
      ),
    );
  }
}
