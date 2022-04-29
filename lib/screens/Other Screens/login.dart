// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:uberr/screens/Other%20Screens/register.dart';
import 'package:uberr/styles/colors.dart';
import 'package:uberr/widgets/custom_text_form_field.dart';

import '../Rider/Map Screens/home.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);
  static String login = 'login';
  @override
  Widget build(BuildContext context) {
    final ThemeData _theme = Theme.of(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
        actions: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(Register.register);
            },
            child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Text(
                "Sign Up",
                style: TextStyle(
                  color: _theme.primaryColor,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Text(
                  "Log In",
                  style: _theme.textTheme.headline6!.merge(
                    const TextStyle(fontSize: 30.0),
                  ),
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              _loginForm(context),
              const SizedBox(
                height: 30.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  const Text(
                    "Or connect using social account",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  SizedBox(
                    height: 45.0,
                    child: FlatButton(
                      onPressed: () {},
                      color: facebookColor,
                      child: Row(
                        children: <Widget>[
                          const Icon(
                            FontAwesomeIcons.facebookSquare,
                            color: Colors.white,
                          ),
                          Expanded(
                            child: Text(
                              "Connect with Facebook",
                              textAlign: TextAlign.center,
                              style: _theme.textTheme.bodyText2!.merge(
                                const TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: _theme.primaryColor,
                        ),
                        borderRadius: BorderRadius.circular(3.0)),
                    margin: const EdgeInsets.only(
                      top: 10.0,
                    ),
                    height: 45.0,
                    child: FlatButton(
                      onPressed: () {},
                      color: _theme.scaffoldBackgroundColor,
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.phone,
                            color: _theme.primaryColor,
                          ),
                          Expanded(
                            child: Text(
                              "Connect with Phone number",
                              textAlign: TextAlign.center,
                              style: _theme.textTheme.bodyText2!.merge(
                                TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: _theme.primaryColor,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _loginForm(BuildContext context) {
    final ThemeData _theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const CustomTextFormField(
          hintText: "Email",
          value: '',
          suffixIcon: Icon(Icons.email),
          verticalPadding: 0.0,
        ),
        const SizedBox(
          height: 20.0,
        ),
        const CustomTextFormField(
          hintText: "Password",
          suffixIcon: Icon(Icons.password),
          value: '',
          verticalPadding: 0.0,
        ),
        const SizedBox(
          height: 20.0,
        ),
        Text(
          "Forgot password?",
          style: TextStyle(
              color: _theme.primaryColor,
              fontSize: 16.0,
              fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 25.0,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 45.0,
          child: FlatButton(
            color: _theme.primaryColor,
            onPressed: () {
              Navigator.of(context).pushReplacementNamed(Homepage.home);
            },
            child: const Text(
              "LOG IN",
              style: TextStyle(color: Colors.white, fontSize: 16.0),
            ),
          ),
        )
      ],
    );
  }
}
