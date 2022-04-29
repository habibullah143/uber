import 'package:flutter/material.dart';
import 'package:uberr/screens/Rider/Delivery/select_Category.dart';

class DeliveryLocation extends StatelessWidget {
  const DeliveryLocation({Key? key}) : super(key: key);
  static String deliveryLocation = 'deliveryLocstion';
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
          'Select Location',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              margin: const EdgeInsets.only(bottom: 15, top: 25),
              child: const TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.location_searching_rounded,
                      color: Colors.blue,
                    ),
                    border: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 2.0),
                    ),
                    labelText: 'Pickup Address',
                    hintText: 'Your pickup addresss'),
              ),
            ),
            Container(
              color: Colors.blue,
              height: 30,
              width: 1,
              margin: const EdgeInsets.only(left: 29),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              margin: const EdgeInsets.only(bottom: 15, top: 15),
              child: const TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.pin_drop_sharp,
                      color: Colors.blue,
                    ),
                    border: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 2.0),
                    ),
                    labelText: 'Drop-off Address',
                    hintText: 'Add your drop-off address'),
              ),
            ),
            const SizedBox(
              height: 90,
            ),
            Center(
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, SelectCategory.selectCategory);
                  },
                  child: const Text('Procede')),
            ),
            const Divider(
              color: Colors.grey,
            ),
            Container(
                margin: const EdgeInsets.all(30),
                child: const Text('Recent Drop-of Addresses'))
          ],
        ),
      ),
    );
  }
}
