import 'package:flutter/material.dart';
import 'package:uberr/screens/Rider/Settings/change_password.dart';
import 'package:uberr/screens/Rider/Settings/edit_profile.dart';
import 'package:uberr/screens/Rider/Settings/language.dart';
import 'package:uberr/screens/Rider/Settings/saved_address.dart';
import 'package:uberr/screens/Rider/Settings/touch_id.dart';
import 'package:uberr/screens/Rider/Settings/country_select.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);
  static String settings = 'settings';
  @override
  Widget build(BuildContext context) {
    final List _accountSettings = [
      {
        "icon": Icons.arrow_forward_ios,
        "text": "Edit Profile",
        "route": EditProfile.editProofile,
      },
      {
        "icon": Icons.arrow_forward_ios,
        "text": "Change Password",
        "route": ChangePassword.changePassword
      },
      {
        "icon": Icons.arrow_forward_ios,
        "text": "Saved Address",
        "route": SavedAddress.savedAddress
      },
    ];
    final List securitySetting = [
      {
        "icon": Icons.arrow_forward_ios,
        "text": "Touch Id",
        "route": TouchId.touchId
      },
      {
        "icon": Icons.arrow_forward_ios,
        "text": "Password Reset",
        "route": ChangePassword.changePassword
      },
    ];
    final List moreSettings = [
      {
        "icon": Icons.arrow_forward_ios,
        "text": "Language",
        "route": LanguageSelection.languageSelection
      },
      {
        "icon": Icons.arrow_forward_ios,
        "text": "Country",
        "route": SelectCountry.selectCountry
      },
    ];
    return Scaffold(
        appBar: AppBar(
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              );
            },
          ),
          backgroundColor: Colors.white,
          title: const Text(
            'Settings',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.,
            children: [
              const ListTile(
                leading: Icon(Icons.account_box),
                iconColor: Colors.red,
                textColor: Colors.red,
                title: Text(
                  'Account',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 180,
                child: ListView(
                  children: _accountSettings.map((menu) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed(menu["route"]);
                      },
                      child: ListTile(
                        trailing: Icon(
                          menu["icon"],
                          size: 17,
                          color: Colors.grey,
                        ),
                        title: Text(
                          menu["text"],
                          style: const TextStyle(
                              fontSize: 17.0, color: Colors.grey),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
              const ListTile(
                leading: Icon(Icons.security),
                iconColor: Colors.red,
                textColor: Colors.red,
                title: Text(
                  'Security',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 130,
                child: ListView(
                  children: securitySetting.map((menu) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed(menu["route"]);
                      },
                      child: ListTile(
                        trailing: Icon(
                          menu["icon"],
                          size: 17,
                          color: Colors.grey,
                        ),
                        title: Text(
                          menu["text"],
                          style: const TextStyle(
                              fontSize: 17.0, color: Colors.grey),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
              const ListTile(
                leading: Icon(Icons.auto_awesome_motion_rounded),
                iconColor: Colors.red,
                textColor: Colors.red,
                title: Text(
                  'More',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                height: 130,
                padding: const EdgeInsets.only(
                  top: 10.0,
                ),
                child: ListView(
                  children: moreSettings.map((menu) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed(menu["route"]);
                      },
                      child: ListTile(
                        trailing: Icon(
                          menu["icon"],
                          size: 17,
                          color: Colors.grey,
                        ),
                        title: Text(
                          menu["text"],
                          style: const TextStyle(
                              fontSize: 17.0, color: Colors.grey),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        ));
  }
}
