// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:uberr/models/debitcard.dart';

class CardContainer extends StatelessWidget {
  final DebitCard cardDetail;
  const CardContainer({Key? key, required this.cardDetail}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final ThemeData _theme = Theme.of(context);
    return Card(
      margin: const EdgeInsets.all(0.0),
      child: ListTile(
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
        leading: cardDetail.logo,
        title: Text(
          "**** **** **** ${cardDetail.lastDigits}",
          style: const TextStyle(
            fontSize: 19.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          "Expires ${cardDetail.expiry}",
          style: const TextStyle(
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
