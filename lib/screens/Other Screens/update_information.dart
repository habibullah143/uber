// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:uberr/widgets/custom_text_form_field.dart';

class UpdateInformation extends StatelessWidget {
  const UpdateInformation({Key? key}) : super(key: key);
  static String updateInfo = 'updateInfo';

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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: Text(
                      "Update Information",
                      style: _theme.textTheme.headline6!.merge(
                        const TextStyle(fontSize: 30.0),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  _updateProfileForm(),
                ],
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 45.0,
              child: FlatButton(
                color: _theme.primaryColor,
                onPressed: () {},
                child: const Text(
                  "SAVE INFORMATION",
                  style: TextStyle(color: Colors.white, fontSize: 16.0),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _updateProfileForm() {
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
      ],
    );
  }
}
