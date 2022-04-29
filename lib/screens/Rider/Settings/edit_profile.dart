import 'package:flutter/material.dart';
import 'package:uberr/widgets/custom_text_form_field.dart';

class EditProfile extends StatelessWidget {
  EditProfile({Key? key}) : super(key: key);
  static String editProofile = 'editProfile';
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () {
                Navigator.pop(context);
              },
            );
          },
        ),
        backgroundColor: Colors.white,
        title: const Text(
          'Edit Profile',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Center(
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 30),
                child: const CircleAvatar(
                  radius: 60.0,
                  backgroundColor: Colors.white,
                  foregroundImage: AssetImage('assets/2.png'),
                  //  NetworkImage(
                  //     "https://www.google.com/search?q=profile+image&rlz=1C1BNSD_enPK948PK948&tbm=isch&source=iu&ictx=1&fir=B3G4vEo9lSBh0M%252CFvQHUVZ-cx81xM%252C_%253BH6pHpB03ZEAgeM%252Cwg0CyFWNfK7o5M%252C_%253BTUPxmKQ-sparcM%252CFvQHUVZ-cx81xM%252C_%253Bc4DKZX1IkCpVhM%252Cb5C9ViMmmhpq-M%252C_%253BifTSkpz9J2bh_M%252CurvXhMiZrB4IuM%252C_%253BeHQKa74ZnnpTfM%252C4XfudSI_3wLzPM%252C_%253ByRz0asXqc1iKxM%252Cb5C9ViMmmhpq-M%252C_%253BS2NNOWEtx4Sh8M%252CWIYPytbMl_8XfM%252C_%253B-h20Jdis7Qx6mM%252CwxS10_IL7Dpp9M%252C_%253BJpaFCmffhUdABM%252CeirPelkp9eoYkM%252C_%253BC7pA_LYt9qMKyM%252CMG0JGB0B8kPXNM%252C_%253B2DnrLk3Tlyfo4M%252C8eDeiABW8CreFM%252C_%253Blcjtk8drNcGL8M%252COgWk3wP_2xVHMM%252C_%253Bfzm-cB-sF1nIvM%252C4XfudSI_3wLzPM%252C_%253BWgJP1HLvsHDWSM%252C-_VDyVVleiKWeM%252C_%253BXVWcKFwzJq264M%252CFvQHUVZ-cx81xM%252C_&vet=1&usg=AI4_-kRQZaW9Ubn_p-A_vdJl88LIA7BAdg&sa=X&ved=2ahUKEwiei-_Y4or0AhXEy6QKHefjDyYQ9QF6BAgREAE#imgrc=ifTSkpz9J2bh_M"),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              margin: const EdgeInsets.symmetric(vertical: 15),
              child: const TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.email,
                      color: Colors.red,
                    ),
                    border: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red, width: 2.0),
                    ),
                    labelText: 'First Name',
                    hintText: 'Your first name'),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              margin: const EdgeInsets.symmetric(vertical: 15),
              child: const TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.email,
                      color: Colors.red,
                    ),
                    border: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red, width: 2.0),
                    ),
                    labelText: 'Last Name',
                    hintText: 'Your last name'),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 15),
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: const TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.email,
                      color: Colors.red,
                    ),
                    border: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red, width: 2.0),
                    ),
                    labelText: 'Phone',
                    hintText: 'phone Number'),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              margin: const EdgeInsets.symmetric(vertical: 15),
              child: const TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.email,
                      color: Colors.red,
                    ),
                    border: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red, width: 2.0),
                    ),
                    labelText: 'Email',
                    hintText: 'abc@gmail.com'),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 15),
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(20)),
              child: FlatButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  'Save',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
