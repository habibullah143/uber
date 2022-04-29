// ignore_for_file: unused_local_variable, avoid_print

import 'package:flutter/material.dart';
import 'package:uberr/models/destination.dart';
import 'package:uberr/models/place.dart';
import 'package:uberr/styles/colors.dart';
import 'package:uberr/widgets/location_card.dart';

class DestinationView extends StatefulWidget {
  const DestinationView({Key? key}) : super(key: key);
  static String destination = 'destination';
  @override
  _DestinationViewState createState() => _DestinationViewState();
}

class _DestinationViewState extends State<DestinationView> {
  final List<Destination> _destinations = [
    Destination(
      destinationText: "No 21 Opeloyeru Street",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    final ThemeData _theme = Theme.of(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: _theme.scaffoldBackgroundColor,
        automaticallyImplyLeading: false,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {},
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.map,
                size: 30.0,
              ),
            ),
          )
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      width: 15.0,
                      height: 15.0,
                      decoration: const BoxDecoration(
                        color: dbasicDarkColor,
                        shape: BoxShape.circle,
                      ),
                    ),
                    Column(
                      children: _destinations
                          .map(
                            (destination) => Column(
                              children: <Widget>[
                                const Text(
                                  ".\n.\n.\n.\n.",
                                  style: TextStyle(
                                      height: 0.4, fontWeight: FontWeight.w900),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(
                                    top: 3.0,
                                  ),
                                  width: 15.0,
                                  height: 15.0,
                                  decoration: BoxDecoration(
                                    color: _theme.primaryColor,
                                  ),
                                ),
                              ],
                            ),
                          )
                          .toList(),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 15.0,
                ),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        decoration: const InputDecoration(
                          isDense: true,
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color.fromARGB(255, 73, 66, 66),
                            ),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color.fromARGB(255, 73, 66, 66),
                            ),
                          ),
                          contentPadding: EdgeInsets.only(bottom: 10.0),
                        ),
                      ),
                      Column(
                        children: _destinations
                            .asMap()
                            .map((int index, Destination destination) {
                              bool lastIndex =
                                  index + 1 == _destinations.length;
                              return MapEntry(
                                  index,
                                  TextFormField(
                                    decoration: InputDecoration(
                                      isDense: true,
                                      enabledBorder: lastIndex
                                          ? InputBorder.none
                                          : const UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color.fromARGB(
                                                    255, 73, 66, 66),
                                              ),
                                            ),
                                      focusedBorder: lastIndex
                                          ? InputBorder.none
                                          : const UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color.fromARGB(
                                                    255, 73, 66, 66),
                                              ),
                                            ),
                                      contentPadding:
                                          const EdgeInsets.only(top: 15.0),
                                      hintText:
                                          lastIndex ? "Enter Destination" : "",
                                      suffixIcon: lastIndex
                                          ? IconButton(
                                              onPressed: () {
                                                setState(() {
                                                  _destinations.add(
                                                    Destination(
                                                      destinationText: "",
                                                    ),
                                                  );
                                                });
                                              },
                                              icon: const Icon(
                                                Icons.add,
                                              ),
                                            )
                                          : IconButton(
                                              onPressed: () {
                                                print(index);
                                                print(_destinations);
                                              },
                                              icon: const Icon(
                                                Icons.cancel,
                                              ),
                                            ),
                                    ),
                                  ));
                            })
                            .values
                            .toList(),
                      ),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 30.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 0.0,
                  ),
                  leading: Container(
                    padding: const EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey[300],
                    ),
                    child: const Icon(
                      Icons.home,
                      size: 20.0,
                    ),
                  ),
                  title: const Text("Home"),
                ),
                const Divider(),
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 0.0,
                  ),
                  leading: Container(
                    padding: const EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey[300],
                    ),
                    child: const Icon(
                      Icons.work,
                      size: 20.0,
                    ),
                  ),
                  title: const Text("Work"),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                _recentPlaces()
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _recentPlaces() {
    final ThemeData _theme = Theme.of(context);
    List<Place> _places = [
      Place(name: "University of Lagos", address: "056 Venim Road Yaba Lagos"),
      Place(name: "University of Lagos", address: "056 Venim Road Yaba Lagos"),
      Place(name: "University of Lagos", address: "056 Venim Road Yaba Lagos"),
    ];

    return SingleChildScrollView(
      child: Column(
        children: _places.map((place) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              LocationCard(place),
              const Divider(
                height: 0.0,
              )
            ],
          );
        }).toList(),
      ),
    );
  }
}
