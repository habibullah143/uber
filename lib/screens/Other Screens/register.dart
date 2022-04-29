// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:uberr/screens/Other%20Screens/login.dart';
import 'package:uberr/screens/Other%20Screens/otp_verification.dart';
import 'package:uberr/styles/colors.dart';
import 'package:uberr/widgets/custom_text_form_field.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);
  static String register = 'register';

  @override
  Widget build(BuildContext context) {
    final ThemeData _theme = Theme.of(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: _theme.scaffoldBackgroundColor,
        automaticallyImplyLeading: false,
        elevation: 0,
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
              Navigator.of(context).pushNamed(Login.login);
            },
            child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Text(
                "Log In",
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
                  "Sign Up",
                  style: _theme.textTheme.headline6!.merge(
                    const TextStyle(fontSize: 30.0),
                  ),
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              _signupForm(),
              const SizedBox(
                height: 30.0,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.only(bottom: 30.0),
                height: 45.0,
                child: FlatButton(
                  color: _theme.primaryColor,
                  onPressed: () {
                    Navigator.of(context)
                        .pushNamed(OtpVerification.otpVerification);
                  },
                  child: const Text(
                    "SIGN UP",
                    style: TextStyle(color: Colors.white, fontSize: 16.0),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _signupForm() {
    return Column(
      children: <Widget>[
        Row(
          children: const <Widget>[
            Expanded(
              child: CustomTextFormField(
                hintText: "First name",
                suffixIcon: Icon(Icons.near_me),
                value: '',
                verticalPadding: 0.0,
              ),
            ),
            SizedBox(width: 15.0),
            Expanded(
              child: CustomTextFormField(
                hintText: "Last name",
                suffixIcon: Icon(Icons.near_me),
                value: '',
                verticalPadding: 0.0,
              ),
            )
          ],
        ),
        const SizedBox(
          height: 20.0,
        ),
        const CustomTextFormField(
          hintText: "Email",
          suffixIcon: Icon(Icons.email),
          value: '',
          verticalPadding: 0.0,
        ),
        const SizedBox(
          height: 20.0,
        ),
        Row(
          children: const <Widget>[
            SizedBox(
              width: 80.0,
              child: CustomTextFormField(
                hintText: "+234",
                suffixIcon: Icon(Icons.numbers),
                value: '',
                verticalPadding: 0.0,
              ),
            ),
            SizedBox(width: 15.0),
            Expanded(
              child: CustomTextFormField(
                hintText: "Phone number",
                suffixIcon: Icon(Icons.numbers),
                value: '',
                verticalPadding: 0.0,
              ),
            )
          ],
        ),
        const SizedBox(
          height: 20.0,
        ),
        const CustomTextFormField(
          hintText: "Password",
          suffixIcon: Icon(Icons.password),
          verticalPadding: 0.0,
          value: '',
        ),
        const SizedBox(
          height: 25.0,
        ),
        const Text(
          "By clicking \"Sign Up\" you agree to our terms and conditions as well as our pricacy policy",
          style: TextStyle(fontWeight: FontWeight.bold, color: dbasicDarkColor),
        )
      ],
    );
  }
}
