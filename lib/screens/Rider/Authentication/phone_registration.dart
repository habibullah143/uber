// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:uberr/widgets/custom_text_form_field.dart';

class PhoneRegistration extends StatelessWidget {
  const PhoneRegistration({Key? key}) : super(key: key);
  static String phoneRegister = 'phone-register';

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
          onPressed: () {},
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
                      "What is your phone number?",
                      style: _theme.textTheme.headline6!.merge(
                        const TextStyle(fontSize: 30.0),
                      ),
                    ),
                  ),
                  const Text(
                    "Tap \"Get Started\" to get an SMS confirmation to help you use UBERR. We would like to get your phone number.",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const <Widget>[
                      Flexible(
                        fit: FlexFit.tight,
                        child: CustomTextFormField(
                          hintText: "+234",
                          suffixIcon: Icon(Icons.numbers),
                          value: '',
                          verticalPadding: 0.0,
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Expanded(
                        flex: 2,
                        child: CustomTextFormField(
                          hintText: "Country Code",
                          verticalPadding: 0.0,
                          suffixIcon: Icon(Icons.code),
                          value: '',
                        ),
                      )
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
                  "GET STARTED",
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
