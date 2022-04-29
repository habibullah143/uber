// ignore_for_file: deprecated_member_use, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:uberr/styles/colors.dart';
import 'package:uberr/widgets/custom_text_form_field.dart';

class UpdateFavorite extends StatelessWidget {
  const UpdateFavorite({Key? key}) : super(key: key);
  static String updateFavourite = 'updateFavourite';
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
          onPressed: () {},
        ),
        centerTitle: true,
        title: const Text(
          "Update Profile",
          style: TextStyle(color: dbasicDarkColor),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(15.0),
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  height: 35.0,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  // ignore: deprecated_member_use
                  child: FlatButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.home),
                    label: const Text(
                      "Home",
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 35.0,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  // ignore: deprecated_member_use
                  child: FlatButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.work),
                    label: const Text(
                      "Work",
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 35.0,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  child: FlatButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.pin_drop),
                    label: const Text(
                      "Other",
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 70.0,
            ),
            const CustomTextFormField(
              hintText: "Place name",
              value: "McDonald's",
              suffixIcon: Icon(Icons.near_me),
              verticalPadding: 0.0,
            ),
            const SizedBox(
              height: 25.0,
            ),
            const CustomTextFormField(
              hintText: "Place address",
              value: "13424 NE 20th St. Bellevue, WA, 98005",
              suffixIcon: Icon(Icons.numbers),
              verticalPadding: 0.0,
            ),
            const SizedBox(
              height: 25.0,
            ),
            FlatButton.icon(
              onPressed: () {},
              icon: const Icon(
                Icons.map,
                color: Colors.white,
              ),
              label: const Text(
                "PICK ON MAP",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              color: _theme.primaryColor,
            ),
            const Expanded(
              child: SizedBox(),
            ),
            Container(
              color: Colors.yellow,
              height: 40.0,
              width: MediaQuery.of(context).size.width,
              child: FlatButton(
                onPressed: () {},
                child: const Text(
                  "SAVE LOCATION",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                color: _theme.primaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
