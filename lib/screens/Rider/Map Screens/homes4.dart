// ignore_for_file: camel_case_types, unused_field

import 'package:flutter/material.dart';
import 'package:uberr/widgets/app_drawer.dart';

class homes4 extends StatefulWidget {
  const homes4({Key? key}) : super(key: key);

  @override
  _homes4State createState() => _homes4State();
}

class _homes4State extends State<homes4> {
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
                      image: AssetImage(
                        "assets/images/map3.png",
                      ),
                      fit: BoxFit.fill,
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
                  children: <Widget>[
                    const SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Text(
                        "Finding A Car",
                        style: _theme.textTheme.headline6,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Center(
                        child: Text('There are several cars,we are looking',
                            style: TextStyle(fontSize: 20))),
                    const Center(
                        child: Text(
                      'for the best fit for You',
                      style: TextStyle(fontSize: 20),
                    )),
                    const SizedBox(
                      height: 50,
                    ),
                    const Center(child: Text("00:08")),
                    const SizedBox(
                      height: 15,
                    ),
                    const CircularProgressIndicator(
                      backgroundColor: Colors.red,
                      color: Colors.red,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text('Cancel Ride')
                  ],
                ),
              ),
            ),
            // SizedBox(
            //   height: 200,
            //   width: 200,
            //   child: CountDownProgressIndicator(
            //     controller: _controller,
            //     valueColor: Colors.red,
            //     backgroundColor: Colors.blue,
            //     initialPosition: 0,
            //     duration: 20,
            //     text: 'SEC',
            //     onComplete: () => null,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
