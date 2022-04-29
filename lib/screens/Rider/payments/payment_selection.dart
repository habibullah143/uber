import 'package:flutter/material.dart';
import 'package:uberr/screens/Rider/payments/add_card.dart';

class PaymentSelection extends StatelessWidget {
  const PaymentSelection({Key? key}) : super(key: key);
  static String paymentSelection = 'paymentSelection';
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
        backgroundColor: Colors.white,
        title: const Text(
          'Payment Selection',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          Container(
              margin: const EdgeInsets.all(20),
              child:
                  const Text('Please choose your payment selection meythod')),
          const ListTile(
            leading: Icon(Icons.attach_money_outlined),
            trailing: Icon(
              Icons.check,
              color: Colors.green,
            ),
            iconColor: Colors.green,
            textColor: Colors.black,
            title: Text(
              'Cash',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.pushNamed(context, AddCard.addCart);
            },
            leading: const Icon(Icons.credit_card),
            trailing: const Icon(
              Icons.arrow_forward_ios_outlined,
              color: Colors.black,
            ),
            iconColor: Colors.yellow,
            textColor: Colors.black,
            title: const Text(
              'Add Payment Card',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
