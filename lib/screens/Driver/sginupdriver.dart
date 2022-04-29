// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:uberr/screens/Rider/welcome%20Screens/my_app.dart';

class page1 extends StatefulWidget {
  const page1({Key? key}) : super(key: key);

  @override
  _page1State createState() => _page1State();
}

class _page1State extends State<page1> {
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
                      MaterialPageRoute(builder: (context) => const MyApp()));
                },
              )),
          body: Column(children: const [
            SizedBox(
              height: 100,
            ),
            Center(
              child: Text(
                'Welcome!',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 36,
                ),
              ),
            ),
            Text(
              'Kindly provide the details ',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              "below for your new account",
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(35, 35, 35, 35),
              child: TextField(
                obscureText: true,
                obscuringCharacter: "*",
                decoration: InputDecoration(
                  hintText: "Full Name",
                  icon: Icon(
                    Icons.person,
                    color: Colors.red,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 0,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(35, 5, 35, 35),
              child: TextField(
                obscureText: true,
                obscuringCharacter: "*",
                decoration: InputDecoration(
                  hintText: "Email",
                  icon: Icon(
                    Icons.email,
                    color: Colors.red,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 0,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(35, 5, 35, 35),
              child: TextField(
                obscureText: true,
                obscuringCharacter: "*",
                decoration: InputDecoration(
                  hintText: "Enter a Password",
                  icon: Icon(
                    Icons.lock,
                    color: Colors.red,
                  ),
                ),
              ),
            ),
          ]),
          floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.red,
            onPressed: () => {
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => const ()))
            },
            tooltip: 'Increment',
            child: const Icon(Icons.arrow_forward),
          ),
        ));
  }
}
