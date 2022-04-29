import 'package:flutter/material.dart';
import 'package:uberr/CallingInterface/constants.dart';
import 'package:uberr/CallingInterface/size_config.dart';

import 'components/body.dart';

class DialScreen extends StatelessWidget {
  const DialScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: kBackgoundColor,
      body: Body(),
    );
  }
}
