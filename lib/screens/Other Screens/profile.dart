// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:uberr/styles/colors.dart';
import 'package:uberr/widgets/custom_text_form_field.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);
  static String profile = 'profile';
  @override
  Widget build(BuildContext context) {
    final ThemeData _theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: _theme.scaffoldBackgroundColor,
        automaticallyImplyLeading: false,
        elevation: 0.0,
        leading: IconButton(
          icon: const Icon(FontAwesomeIcons.times),
          onPressed: () {
            if (Navigator.of(context).canPop()) {
              Navigator.of(context).pop();
            }
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Hello OLayemii !",
                    style: _theme.textTheme.headline6!
                        .merge(const TextStyle(fontSize: 26.0)),
                  ),
                  const CircleAvatar(
                    radius: 25.0,
                    backgroundImage: AssetImage('assets/2.png'),
                  )
                ],
              ),
              const SizedBox(
                height: 25.0,
              ),
              const CustomTextFormField(
                hintText: "Name",
                value: "Welcome, JOHN",
                suffixIcon: Icon(Icons.near_me),
                verticalPadding: 0.0,
              ),
              const SizedBox(
                height: 15.0,
              ),
              CustomTextFormField(
                hintText: "Email",
                value: "donyemisco@gmail.com",
                suffixIcon: Icon(
                  Icons.check_circle,
                  color: _theme.primaryColor,
                ),
                verticalPadding: 0.0,
              ),
              const SizedBox(
                height: 15.0,
              ),
              const CustomTextFormField(
                hintText: "Edit Profile",
                value: "Edit Profile",
                suffixIcon: Icon(Icons.usb_rounded),
                verticalPadding: 0.0,
              ),
              const SizedBox(
                height: 15.0,
              ),
              const Text(
                "PREFERENCES",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 14.0,
                  color: Color(0xFF9CA4AA),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Container(
                decoration: BoxDecoration(
                  color: const Color(0xffFBFBFD),
                  border: Border.all(
                    color: const Color(0xffD6D6D6),
                  ),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 10.0,
                  vertical: 20.0,
                ),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        const Expanded(
                          child: Text(
                            "RECEIVE RECEIPT MAILS",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Switch(
                          value: true,
                          activeColor: _theme.primaryColor,
                          onChanged: (bool state) {},
                        )
                      ],
                    ),
                    const Text(
                      "The switch is the widget used to achieve the popular.",
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  color: Color(0xffFBFBFD),
                ),
                padding: const EdgeInsets.symmetric(
                  vertical: 20.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Text(
                      "SOCIAL NETWORK",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 14.0,
                        color: Color(0xFF9CA4AA),
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
                      margin: const EdgeInsets.only(top: 10.0),
                      height: 45.0,
                      child: FlatButton(
                        onPressed: () {},
                        color: _theme.scaffoldBackgroundColor,
                        child: Row(
                          children: <Widget>[
                            Icon(
                              FontAwesomeIcons.google,
                              size: 18.0,
                              color: _theme.primaryColor,
                            ),
                            Expanded(
                              child: Text(
                                "Connect with Google",
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
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
