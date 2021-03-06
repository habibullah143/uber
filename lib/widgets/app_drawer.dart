import 'package:flutter/material.dart';
import 'package:uberr/screens/Rider/Authentication/login_demo.dart.dart';
import 'package:uberr/screens/Rider/Authentication/login_demo.dart.dart';
import 'package:uberr/screens/Rider/Delivery/select_Category.dart';
import 'package:uberr/screens/Rider/Settings/settings.dart';
import 'package:uberr/screens/Rider/payments/payment_selection.dart';
import 'package:uberr/screens/Rider/Drawer%20Screens/refer_earn.dart';
import 'package:uberr/screens/Other%20Screens/favorites.dart';
import 'package:uberr/screens/Rider/Drawer%20Screens/my_rides.dart';
import 'package:uberr/screens/Rider/payments/payment.dart';
import 'package:uberr/screens/Other%20Screens/profile.dart';
import 'package:uberr/screens/Rider/Drawer%20Screens/promotions.dart';

import '../screens/Rider/Authentication/login_demo.dart.dart';
import '../screens/Rider/Authentication/login_demo.dart.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List _drawerMenu = [
      {
        "icon": Icons.delivery_dining,
        "text": "Send Parcel",
        "route": SelectCategory.selectCategory,
      },
      {"icon": Icons.history, "text": "History", "route": MyRides.myRides},
      {
        "icon": Icons.schedule,
        "text": "Schedule",
        "route": Favourites.favourities
      },
      {
        "icon": Icons.notifications,
        "text": "Notifications",
        "route": Payment.payment,
      },
      {
        "icon": Icons.payment,
        "text": "Payments",
        "route": PaymentSelection.paymentSelection,
      },
      {
        "icon": Icons.contacts,
        "text": "Refer & Earn",
        "route": ReferEarn.referEarn,
      },
      {
        "icon": Icons.settings,
        "text": "Settings",
        "route": Settings.settings,
      },
      {
        "icon": Icons.support,
        "text": "Support",
        "route": Promotions.promotions,
      },
      {
        "icon": Icons.logout,
        "text": "Log Out",
        "route": LoginDemo.loginDemo,
      }
    ];
    return Container(
      color: Colors.white,
      width: MediaQuery.of(context).size.width -
          (MediaQuery.of(context).size.width * 0.2),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 25.0,
              ),
              height: 170.0,
              color: Colors.yellow[200],
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const CircleAvatar(
                    radius: 30.0,
                    backgroundColor: Colors.white,
                    foregroundImage: AssetImage('assets/2.png'),
                    //  NetworkImage(
                    //     "https://www.google.com/search?q=profile+image&rlz=1C1BNSD_enPK948PK948&tbm=isch&source=iu&ictx=1&fir=B3G4vEo9lSBh0M%252CFvQHUVZ-cx81xM%252C_%253BH6pHpB03ZEAgeM%252Cwg0CyFWNfK7o5M%252C_%253BTUPxmKQ-sparcM%252CFvQHUVZ-cx81xM%252C_%253Bc4DKZX1IkCpVhM%252Cb5C9ViMmmhpq-M%252C_%253BifTSkpz9J2bh_M%252CurvXhMiZrB4IuM%252C_%253BeHQKa74ZnnpTfM%252C4XfudSI_3wLzPM%252C_%253ByRz0asXqc1iKxM%252Cb5C9ViMmmhpq-M%252C_%253BS2NNOWEtx4Sh8M%252CWIYPytbMl_8XfM%252C_%253B-h20Jdis7Qx6mM%252CwxS10_IL7Dpp9M%252C_%253BJpaFCmffhUdABM%252CeirPelkp9eoYkM%252C_%253BC7pA_LYt9qMKyM%252CMG0JGB0B8kPXNM%252C_%253B2DnrLk3Tlyfo4M%252C8eDeiABW8CreFM%252C_%253Blcjtk8drNcGL8M%252COgWk3wP_2xVHMM%252C_%253Bfzm-cB-sF1nIvM%252C4XfudSI_3wLzPM%252C_%253BWgJP1HLvsHDWSM%252C-_VDyVVleiKWeM%252C_%253BXVWcKFwzJq264M%252CFvQHUVZ-cx81xM%252C_&vet=1&usg=AI4_-kRQZaW9Ubn_p-A_vdJl88LIA7BAdg&sa=X&ved=2ahUKEwiei-_Y4or0AhXEy6QKHefjDyYQ9QF6BAgREAE#imgrc=ifTSkpz9J2bh_M"),
                  ),
                  const SizedBox(
                    height: 7.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      const Text(
                        "Welcome, John",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 19.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushNamed(Profile.profile);
                        },
                        child: const Icon(
                          Icons.chevron_right,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                  const Text(
                    "Edit Profile",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15.0,
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(
                  top: 20.0,
                ),
                child: ListView(
                  children: _drawerMenu.map((menu) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed(menu["route"]);
                      },
                      child: ListTile(
                        leading: Icon(
                          menu["icon"],
                          color: Colors.red,
                        ),
                        title: Text(
                          menu["text"],
                          style: const TextStyle(
                            fontSize: 17.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
