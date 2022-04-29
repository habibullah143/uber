// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:uberr/widgets/custom_text_form_field.dart';

class OtpVerification extends StatelessWidget {
  const OtpVerification({Key? key}) : super(key: key);
  static String otpVerification = 'otpVerificaton';

  @override
  Widget build(BuildContext context) {
    final ThemeData _theme = Theme.of(context);
    return Scaffold(
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
      ),
      body: Container(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: Text(
                      "Verify Phone Number",
                      style: _theme.textTheme.headline6!.merge(
                        const TextStyle(fontSize: 30.0),
                      ),
                    ),
                  ),
                  const Text(
                    "Check your SMS messages, We've sent an OTP to 07033195813",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  Row(
                    children: const <Widget>[
                      Expanded(
                        child: CustomTextFormField(
                          hintText: "",
                          verticalPadding: 25.0,
                          suffixIcon: Icon(Icons.email),
                          value: '',
                        ),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Expanded(
                        child: CustomTextFormField(
                          hintText: "",
                          verticalPadding: 25.0,
                          suffixIcon: Icon(Icons.email),
                          value: '',
                        ),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Expanded(
                        child: CustomTextFormField(
                          hintText: "",
                          verticalPadding: 25.0,
                          suffixIcon: Icon(Icons.email),
                          value: '',
                        ),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Expanded(
                        child: CustomTextFormField(
                          hintText: "",
                          verticalPadding: 25.0,
                          suffixIcon: Icon(Icons.email),
                          value: '',
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Wrap(
                    children: <Widget>[
                      const Text(
                        "Didn't receive SMS?",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        "Resend Code",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: _theme.primaryColor,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 45.0,
              child: FlatButton(
                color: _theme.primaryColor,
                child: Text(
                  "VERIFY",
                  style: _theme.textTheme.bodyText2!.merge(
                    const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
