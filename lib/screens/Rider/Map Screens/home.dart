// ignore_for_file: deprecated_member_use, avoid_print, unnecessary_const
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:uberr/req/asstentmethod.dart';
import 'package:uberr/widgets/app_drawer.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);
  static String home = 'home';

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  Completer<GoogleMapController> controllergooglemap = Completer();
  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );
  GoogleMapController? newgooglemapcontroller;
  double toppading = 0;
  String? finalemail;
  Position? currentposition;
  var geolocator = Geolocator();
  LatLng? ner;

  void locator() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);
      currentposition = position;
      LatLng latalaposition = LatLng(position.latitude, position.longitude);
      CameraPosition cameraPosition =
          CameraPosition(target: latalaposition, zoom: 50);
      newgooglemapcontroller
          ?.animateCamera(CameraUpdate.newCameraPosition(cameraPosition));
      String adress =
          await Assistentmethod.searchcordinateadress(position, context);
      print("this is your Adress::" + adress);
    } catch (e) {
      print(e);
    }
  }

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
                  height: MediaQuery.of(context).size.height - 350.0,
                  child: GoogleMap(
                    padding: EdgeInsets.only(top: toppading),
                    mapType: MapType.normal,
                    myLocationButtonEnabled: true,
                    zoomGesturesEnabled: true,
                    zoomControlsEnabled: true,
                    myLocationEnabled: true,
                    initialCameraPosition: _kGooglePlex,
                    onMapCreated: (GoogleMapController controller) {
                      controllergooglemap.complete(controller);
                      newgooglemapcontroller = controller;
                      toppading = 0;
                      locator();
                    },
                  ),
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
                  // child: Image(
                  //   image: AssetImage("assets/images/map1.png"),
                  // )
                ),
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
            Expanded(
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
                    Text(
                      "Good Morning,John",
                      style: _theme.textTheme.headline6,
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    const Text(
                      "Where are u going?",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                          border: UnderlineInputBorder(),
                          labelText: 'Search Destination'),
                    ),
                    SizedBox(
                      height: 120,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                        child: ListView(
                          children: [
                            ListTile(
                                title: Row(
                              children: [
                                const Icon(
                                  Icons.add_location,
                                  color: Colors.red,
                                  size: 40.0,
                                  textDirection: TextDirection.ltr,
                                  semanticLabel:
                                      'Icon', // Announced in accessibility modes (e.g TalkBack/VoiceOver). This label does not show in the UI.
                                ),
                                Column(
                                  children: const [
                                    const Align(
                                      alignment: Alignment.centerLeft,
                                    ),
                                    // Text(
                                    //   // ignore: unnecessary_null_comparison
                                    //   Provider.of<WalkthroughProvider>(context)
                                    //               .pickuplocation ==
                                    //           null
                                    //       ? Provider.of<WalkthroughProvider>(
                                    //               context)
                                    //           .pickuplocation!
                                    //           .placename
                                    //       : "Add home",
                                    //   textAlign: TextAlign.left,
                                    //   style: const TextStyle(
                                    //       color: Colors.black, fontSize: 20),
                                    // ),
                                    const Text(
                                      "Shopire Event Centre",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 10),
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
                                    Icons.add_location,
                                    color: Colors.red,
                                    size: 40.0,
                                    textDirection: TextDirection.ltr,
                                    semanticLabel:
                                        'Icon', // Announced in accessibility modes (e.g TalkBack/VoiceOver). This label does not show in the UI.
                                  ),
                                  Column(
                                    children: const [
                                      Text(
                                        "Shoprite Event Centre",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 20),
                                      ),
                                      Text(
                                        "Shoprite Event Centre",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 10),
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
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void home2() {
    Expanded(
      child: Container(
        alignment: Alignment.center,
        constraints: const BoxConstraints(),
        padding: const EdgeInsets.all(20.0),
        decoration: const BoxDecoration(
          boxShadow: [
            const BoxShadow(
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
            const Text(
              "Select Car",
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
                              style:
                                  TextStyle(color: Colors.black, fontSize: 20),
                            ),
                            Text(
                              "          N900  ",
                              textAlign: TextAlign.left,
                              style:
                                  TextStyle(color: Colors.black, fontSize: 20),
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
                                    color: Colors.black, fontSize: 20),
                              ),
                              Text(
                                "     N1,200 ",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20),
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
                                    color: Colors.black, fontSize: 20),
                              ),
                              Text(
                                "    N5,000 ",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20),
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
                child:
                    const Text('Request Ride', style: TextStyle(fontSize: 20)),
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
    );
  }
}
