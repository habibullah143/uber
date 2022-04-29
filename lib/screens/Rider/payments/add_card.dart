// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:uberr/screens/Rider/payments/payment.dart';
import 'package:uberr/widgets/custom_text_form_field.dart';

class AddCard extends StatelessWidget {
  const AddCard({Key? key}) : super(key: key);
  static String addCart = 'adCart';
  @override
  Widget build(BuildContext context) {
    final ThemeData _theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: _theme.scaffoldBackgroundColor,
        automaticallyImplyLeading: false,
        elevation: 0.0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            if (Navigator.of(context).canPop()) {
              Navigator.of(context).pop();
            }
          },
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Add credit card",
              style: _theme.textTheme.headline6,
            ),
            const SizedBox(
              height: 50.0,
            ),
            SizedBox(
              height: 42.0,
              width: 160.0,
              child: RaisedButton(
                onPressed: () {},
                color: _theme.primaryColor,
                child: Wrap(
                  children: const <Widget>[
                    Icon(
                      FontAwesomeIcons.expand,
                      size: 18.0,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      "SCAN CARD",
                      style: TextStyle(
                          fontSize: 16.0, color: Colors.white, height: 1.35),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            const CustomTextFormField(
              hintText: "NAME",
              value: "Welcome John",
              suffixIcon: Icon(Icons.near_me),
              verticalPadding: 0.0,
            ),
            const SizedBox(
              height: 25.0,
            ),
            const CustomTextFormField(
              hintText: "CREDIT CARD NUMBER",
              value: "**** **** **** **85",
              suffixIcon: Icon(Icons.password),
              verticalPadding: 0.0,
            ),
            const SizedBox(
              height: 25.0,
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const <Widget>[
                  Expanded(
                    child: CustomTextFormField(
                      hintText: "EXPIRY",
                      value: "09/25",
                      verticalPadding: 0.0,
                      suffixIcon: Icon(Icons.date_range),
                    ),
                  ),
                  SizedBox(
                    width: 30.0,
                  ),
                  Expanded(
                    child: CustomTextFormField(
                      hintText: "CVV",
                      value: "***",
                      verticalPadding: 0.0,
                      suffixIcon: Icon(Icons.password),
                    ),
                  )
                ],
              ),
            ),
            const Text(
              "Debit cards are accepted at some locations and for some categories",
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(
              height: 15.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Image.asset(
                  "assets/images/mastercard.png",
                ),
                Image.asset(
                  "assets/images/visa.png",
                )
              ],
            ),
            const SizedBox(
              height: 25.0,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              color: _theme.primaryColor,
              child: FlatButton(
                child: const Text(
                  "SAVE",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, Payment.payment);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
