import 'package:flutter/material.dart';
import 'package:uberr/widgets/ride_card.dart';

class RideCards extends StatelessWidget {
  const RideCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const <Widget>[
        RideCard(),
        RideCard(),
        RideCard(),
      ],
    );
  }
}
