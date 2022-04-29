import 'package:flutter/material.dart';

class ReferEarn extends StatelessWidget {
  const ReferEarn({Key? key}) : super(key: key);
  static String referEarn = 'referEarn';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () {
                Navigator.pop(context);
              },
            );
          },
        ),
        backgroundColor: Colors.amber[600],
        title: const Text(
          'Refer and Earn',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(children: [
        Expanded(
            child: Container(
          child: const Center(
            child: Image(
              image: AssetImage('assets/images/earn.png'),
            ),
          ),
          color: Colors.amber[600],
        )),
        Expanded(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Text(
                  'Earn free ride with your referal code ',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Text('Refo3456'),
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                      'Share your referal code with friends and love ones and earn a free ride when they register with your code'),
                )
              ]),
        ),
      ]),
    );
  }
}
