import 'package:flutter/material.dart';
import 'package:uberr/screens/Rider/Delivery/order_sumary.dart';

class SelectVehicle extends StatelessWidget {
  const SelectVehicle({Key? key}) : super(key: key);
  static String selectVehicle = 'selectVehicle';
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
            'Select Vehicle',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Container(
          margin: const EdgeInsets.only(top: 85),
          height: MediaQuery.of(context).size.height - 150,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.0),
                  topRight: Radius.circular(40.0))),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const VehicleBox(
                  name: 'Motor Bike',
                  comment:
                      'Portable for very light weight items and goods that not weighs much',
                  image: 'assets/images/deliveryBike.png',
                ),
                const VehicleBox(
                  name: 'Car',
                  comment:
                      'ideal for items that can easily sit and stay in car boot',
                  image: 'assets/images/delivery car.png',
                ),
                const VehicleBox(
                  name: 'Van',
                  comment:
                      'Suitable for transporting big and heavy items like fidge',
                  image: 'assets/images/van.png',
                ),
                const VehicleBox(
                  name: 'Truck',
                  comment:
                      'Ideal for very big and heavy products like farm products',
                  image: 'assets/images/truck.png',
                ),
                Container(
                  margin: const EdgeInsets.only(top: 0),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.red[400],
                        padding: const EdgeInsets.symmetric(
                            horizontal: 80, vertical: 5),
                        textStyle: const TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, OrderSummary.orderSummary);
                      },
                      child: const Text('Next')),
                )
              ]),
        ));
  }
}

class VehicleBox extends StatelessWidget {
  const VehicleBox(
      {Key? key,
      required this.name,
      required this.comment,
      required this.image})
      : super(key: key);
  final String name;
  final String comment;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.red[100], borderRadius: BorderRadius.circular(10)),
      height: 100,
      margin: const EdgeInsets.only(left: 20, bottom: 10, right: 20),
      padding: const EdgeInsets.all(15),
      child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                name,
                style: const TextStyle(color: Colors.red, fontSize: 15),
              ),
              Text(
                comment,
                style: const TextStyle(fontSize: 12),
              ),
            ],
          ),
        ),
        Image(image: AssetImage(image))
      ]),
    );
  }
}
