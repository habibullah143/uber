// ignore_for_file: avoid_print

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:uberr/screens/Rider/Delivery/select_vehicle.dart';
import 'package:uberr/widgets/dropdownbutton.dart';

class SelectWeight extends StatefulWidget {
  const SelectWeight({Key? key}) : super(key: key);
  static String selectWeight = 'selectWeight';

  @override
  State<SelectWeight> createState() => _SelectWeightState();
}

class _SelectWeightState extends State<SelectWeight> {
  String dropdownvalue = 'one';

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
          'Select Weight',
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
        child: Column(children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.red[100],
                borderRadius: BorderRadius.circular(10)),
            height: 100,
            margin:
                const EdgeInsets.only(top: 20, bottom: 20, left: 20, right: 20),
            padding: const EdgeInsets.all(15),
            child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Text(
                      'What is the Item Weight?',
                      style: TextStyle(color: Colors.red, fontSize: 15),
                    ),
                    Text(
                      'The weight of item will help determine the kind of vehicle to convey it',
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              ),
              const Image(image: AssetImage('assets/images/weight.png'))
            ]),
          ),
          ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              physics: const ScrollPhysics(),
              itemCount: 1,
              itemBuilder: (_, index) {
                List<String> selectedItemValue = <String>[
                  ("Select Weight"),
                  ("1-5 kg"),
                  ("5-10 kg"),
                  ("10-15"),
                  ("15-20 kg"),
                  ("> 20 kg")
                ];

                final defaultValue = selectedItemValue[0];

                return CustomDropdownMenu(
                    defaultValue: defaultValue,
                    values: selectedItemValue,
                    onItemSelected: (value) {
                      print("Selected Item : $value");
                    });
              }),
          Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 30),
                  child: const Text(
                    'Add Photos',
                    style: TextStyle(fontSize: 18, color: Colors.grey),
                  ),
                ),
                Row(
                  children: [
                    Container(
                        color: Colors.red[100],
                        margin: const EdgeInsets.all(20),
                        child: const Image(
                            image: AssetImage('assets/images/weightImg.png'))),
                    Container(
                      color: Colors.grey[300],
                      height: 55,
                      width: 55,
                      child: const Icon(Icons.add),
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 170),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.red[400],
                  padding:
                      const EdgeInsets.symmetric(horizontal: 80, vertical: 5),
                  textStyle: const TextStyle(
                      fontSize: 30, fontWeight: FontWeight.bold),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, SelectVehicle.selectVehicle);
                },
                child: const Text('Next')),
          )
        ]),
      ),
    );
  }
}
