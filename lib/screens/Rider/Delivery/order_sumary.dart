import 'package:flutter/material.dart';
import 'package:uberr/screens/Rider/Map%20Screens/homescreen3.dart';

class OrderSummary extends StatelessWidget {
  const OrderSummary({Key? key}) : super(key: key);
  static String orderSummary = 'orderSummary';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.red[400],
        appBar: AppBar(
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.arrow_back, color: Colors.white),
                onPressed: () {
                  Navigator.pop(context);
                },
              );
            },
          ),
          backgroundColor: Colors.red[400],
          title: const Text(
            'Order Summary',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Container(
          margin: const EdgeInsets.only(top: 45),
          height: MediaQuery.of(context).size.height - 130,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.0),
                  topRight: Radius.circular(40.0))),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  margin: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey[100]),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      ListTile(
                        leading: Icon(
                          Icons.location_searching,
                          color: Colors.blue,
                        ),
                        title: Text('Pickup Address'),
                        subtitle: Text('Obafemi awalowolo Way,Ikeja'),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.pin_drop,
                          color: Colors.blue,
                        ),
                        title: Text('Delivery Address'),
                        subtitle: Text('Festac House,Ikeja Nigeria'),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.category,
                          color: Colors.blue,
                        ),
                        title: Text('Category'),
                        subtitle: Text('Phones, Clothes, Documents'),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.shopping_bag_sharp,
                          color: Colors.blue,
                        ),
                        title: Text('Parcel Weight'),
                        subtitle: Text('5-10 kg'),
                      ),
                    ],
                  ),
                ),
                const TextFieldBox(
                    hint: 'Enter Recepients Name',
                    label: 'Name',
                    icon: Icons.person),
                const TextFieldBox(
                    hint: 'Enter Recepients NUmber',
                    label: 'Number',
                    icon: Icons.phone),
                const TextFieldBox(
                    hint: "Leave your Comments",
                    label: 'Comment Box',
                    icon: Icons.abc),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 30),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.red[400],
                        padding: const EdgeInsets.symmetric(
                            horizontal: 80, vertical: 5),
                        textStyle: const TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, Homes3.homes3);
                      },
                      child: const Text('Next')),
                )
              ],
            ),
          ),
        ));
  }
}

class TextFieldBox extends StatelessWidget {
  const TextFieldBox({
    Key? key,
    required this.hint,
    required this.label,
    required this.icon,
  }) : super(key: key);

  final String hint;
  final String label;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
      height: 50,
      child: TextField(
        decoration: InputDecoration(
            prefixIcon: Icon(
              icon,
              color: Colors.grey,
            ),
            border: const OutlineInputBorder(),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey, width: 2.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.grey, width: 2.0),
              borderRadius: BorderRadius.circular(25.0),
            ),
            labelText: label,
            hintText: hint),
      ),
    );
  }
}
