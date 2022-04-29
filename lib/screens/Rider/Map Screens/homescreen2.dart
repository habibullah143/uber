// ignore_for_file: camel_case_types, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:uberr/screens/Rider/Map%20Screens/homescreen3.dart';
import 'package:uberr/widgets/app_drawer.dart';

class homes2 extends StatefulWidget {
  const homes2({Key? key}) : super(key: key);

  @override
  _homes2State createState() => _homes2State();
}

class _homes2State extends State<homes2> {
  @override
  Widget build(BuildContext context) {
    final ThemeData _theme = Theme.of(context);
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      drawer: const AppDrawer(),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                SizedBox(
                    height: MediaQuery.of(context).size.height - 420.0,
                    // child: GoogleMap(
                    //   myLocationButtonEnabled: true,
                    //   myLocationEnabled: true,
                    //   markers: _markers,
                    //   onMapCreated: _onMapCreated,
                    //   initialCameraPosition: CameraPosition(
                    //     target: _center,
                    //     zoom: 11.0,
                    //   ),
                    // ),
                    // child: FlutterMap(
                    //   options: MapOptions(
                    //     center: LatLng(51.3, -0.08),
                    //     zoom: 13.0,
                    //   ),
                    //   layers: [
                    //     TileLayerOptions(
                    //       urlTemplate:
                    //           "https://cartodb-basemaps-{s}.global.ssl.fastly.net/light_all/{z}/{x}/{y}.png",
                    //       subdomains: ['a', 'b', 'c'],
                    //     ),
                    //     MarkerLayerOptions(markers: _markers)
                    //   ],
                    // ),
                    child: const Image(
                      image: const AssetImage("assets/images/map2.png"),
                    )),
                Builder(
                  builder: (BuildContext context) {
                    return IconButton(
                      icon: const Icon(
                        Icons.menu,
                        size: 35.0,
                      ),
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      },
                    );
                  },
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Homes3()));
              },
              child: Expanded(
                child: Container(
                  alignment: Alignment.center,
                  constraints: const BoxConstraints(),
                  padding: const EdgeInsets.all(20.0),
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(
                          0,
                          0,
                          0,
                          0.15,
                        ),
                        blurRadius: 25.0,
                      ),
                    ],
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Select Car",
                        style: _theme.textTheme.headline6,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 210,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                          child: ListView(
                            children: [
                              ListTile(
                                  title: Row(
                                children: [
                                  const Icon(
                                    Icons.car_rental,
                                    color: Colors.red,
                                    size: 40.0,
                                    textDirection: TextDirection.ltr,
                                    semanticLabel:
                                        'Icon', // Announced in accessibility modes (e.g TalkBack/VoiceOver). This label does not show in the UI.
                                  ),
                                  Row(
                                    children: const [
                                      Align(
                                        alignment: Alignment.centerLeft,
                                      ),
                                      Text(
                                        "     Basic Car",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 20),
                                      ),
                                      Text(
                                        "          N900  ",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 20),
                                      ),
                                    ],
                                  )
                                ],
                              )),
                              // const Divider(
                              //   color: Colors.white,
                              // ),
                              ListTile(
                                title: Row(
                                  children: [
                                    const Icon(
                                      Icons.car_rental_rounded,
                                      color: Colors.red,
                                      size: 40.0,
                                      textDirection: TextDirection.ltr,
                                      semanticLabel:
                                          'Icon', // Announced in accessibility modes (e.g TalkBack/VoiceOver). This label does not show in the UI.
                                    ),
                                    Row(
                                      children: const [
                                        Text(
                                          "        Comfort    ",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20),
                                        ),
                                        Text(
                                          "     N1,200 ",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              ListTile(
                                title: Row(
                                  children: [
                                    const Icon(
                                      Icons.car_rental_sharp,
                                      color: Colors.red,
                                      size: 40.0,
                                      textDirection: TextDirection.ltr,
                                      semanticLabel:
                                          'Icon', // Announced in accessibility modes (e.g TalkBack/VoiceOver). This label does not show in the UI.
                                    ),
                                    Row(
                                      children: const [
                                        Text(
                                          "        Premium    ",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20),
                                        ),
                                        Text(
                                          "    N5,000 ",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              const Divider(
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
                        child: RaisedButton(
                          onPressed: () {},
                          child: const Text('Request Ride',
                              style: TextStyle(fontSize: 20)),
                          color: Colors.red,
                          textColor: Colors.white,
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
