// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:uberr/screens/Other%20Screens/login.dart';
import 'package:uberr/screens/Other%20Screens/register.dart';
import 'package:uberr/styles/colors.dart';

class UnAuth extends StatelessWidget {
  const UnAuth({Key? key}) : super(key: key);
  static String unAuth = 'unAuth';
  @override
  Widget build(BuildContext context) {
    final ThemeData _theme = Theme.of(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                child: Image.asset("assets/images/bg.png"),
                decoration: const BoxDecoration(),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20.0),
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              height: 250.0,
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: FlatButton(
                          color: _theme.primaryColor,
                          child: const Text(
                            "LOGIN",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          onPressed: () {
                            Navigator.of(context).pushNamed(Login.login);
                          },
                        ),
                      ),
                      const SizedBox(width: 40.0),
                      Expanded(
                        child: FlatButton(
                          color: facebookColor,
                          child: const Text(
                            "REGISTER",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          onPressed: () {
                            Navigator.of(context).pushNamed(Register.register);
                          },
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  Row(
                    children: <Widget>[
                      const Expanded(
                        child: Divider(
                          color: dbasicGreyColor,
                        ),
                      ),
                      Container(
                        child: const Text(
                          "Or connect with social",
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 15.0,
                        ),
                      ),
                      const Expanded(
                        child: Divider(
                          color: dbasicGreyColor,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 15.0),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15.0,
                    ),
                    height: 45.0,
                    decoration: BoxDecoration(
                      color: facebookColor,
                      borderRadius: BorderRadius.circular(6.0),
                    ),
                    child: Row(
                      children: const <Widget>[
                        Icon(
                          FontAwesomeIcons.facebookSquare,
                          color: Colors.white,
                        ),
                        Expanded(
                          child: Text(
                            "Login with Facebook",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 15.0),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15.0,
                    ),
                    height: 45.0,
                    decoration: BoxDecoration(
                      border: Border.all(color: _theme.primaryColor),
                      borderRadius: BorderRadius.circular(6.0),
                    ),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          FontAwesomeIcons.google,
                          color: _theme.primaryColor,
                        ),
                        Expanded(
                          child: Text(
                            "Login with Google",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: _theme.primaryColor,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
