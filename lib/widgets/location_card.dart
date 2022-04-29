import 'package:flutter/material.dart';
import 'package:uberr/models/place.dart';

class LocationCard extends StatelessWidget {
  final Place place;
  const LocationCard(this.place, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData _theme = Theme.of(context);
    return Column(
      children: <Widget>[
        ListTile(
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 0.0, vertical: 0.0),
          leading: Icon(
            Icons.location_on,
            color: _theme.primaryColor,
          ),
          title: Text(
            place.name,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
            ),
          ),
          subtitle: Text(
            place.address,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const Divider(),
      ],
    );
  }
}
