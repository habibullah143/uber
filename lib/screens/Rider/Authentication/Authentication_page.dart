import 'package:firebase_auth/firebase_auth.dart';
import "package:flutter/material.dart";
import 'package:uberr/screens/Rider/Authentication/fingureprint_scan.dart';
import 'package:pinput/pinput.dart';

enum MobileVerificationState {
  SHOW_MOBILE_FORM_STATE,
  SHOW_OTP_FORM_STATE,
}

class Page2 extends StatefulWidget {
  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  MobileVerificationState currentState =
      MobileVerificationState.SHOW_MOBILE_FORM_STATE;

  final phoneController = TextEditingController();
  final otpController = TextEditingController();

  FirebaseAuth _auth = FirebaseAuth.instance;

  late String verificationId;

  bool showLoading = false;

  void signInWithPhoneAuthCredential(
      PhoneAuthCredential phoneAuthCredential) async {
    setState(() {
      showLoading = true;
    });

    try {
      final authCredential =
          await _auth.signInWithCredential(phoneAuthCredential);

      setState(() {
        showLoading = false;
      });

      if (authCredential.user != null) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => page4()));
      }
    } on FirebaseAuthException catch (e) {
      setState(() {
        showLoading = false;
      });

      _scaffoldKey.currentState!
          // ignore: deprecated_member_use
          .showSnackBar(SnackBar(content: Text(e.message.toString())));
    }
  }

  getMobileFormWidget(context) {
    return Column(
      children: [
        Spacer(),
        Text(
          "Authentication",
          style: TextStyle(fontSize: 45, color: Colors.red),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "Enter your number below A code\n  will be send for veriication",
          style: TextStyle(fontSize: 15, color: Colors.black),
        ),
        SizedBox(
          height: 30,
        ),
        TextField(
          controller: phoneController,
          decoration: InputDecoration(
            hintText: "Mobile Number",
          ),
        ),
        SizedBox(
          height: 16,
        ),
        FlatButton(
          onPressed: () async {
            setState(() {
              showLoading = true;
            });

            await _auth.verifyPhoneNumber(
              phoneNumber: phoneController.text,
              verificationCompleted: (phoneAuthCredential) async {
                setState(() {
                  showLoading = false;
                });
                //signInWithPhoneAuthCredential(phoneAuthCredential);
              },
              verificationFailed: (verificationFailed) async {
                setState(() {
                  showLoading = false;
                });
                _scaffoldKey.currentState!.showSnackBar(SnackBar(
                    content: Text(verificationFailed.message.toString())));
              },
              codeSent: (verificationId, resendingToken) async {
                setState(() {
                  showLoading = false;
                  currentState = MobileVerificationState.SHOW_OTP_FORM_STATE;
                  this.verificationId = verificationId;
                });
              },
              codeAutoRetrievalTimeout: (verificationId) async {},
            );
          },
          child: Text("SEND"),
          color: Colors.red,
          textColor: Colors.white,
        ),
        Spacer(),
      ],
    );
  }

  getOtpFormWidget(context) {
    return Column(
      children: [
        Spacer(),
        Text(
          "Verification",
          style: TextStyle(fontSize: 45, color: Colors.red),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "Kindly enter the OTP sent to your\n                   mobile phone",
          style: TextStyle(fontSize: 15, color: Colors.black),
        ),
        SizedBox(
          height: 30,
        ),
        Pinput(
          length: 6,
          controller: otpController,
        ),
        SizedBox(
          height: 16,
        ),
        TextButton(
          onPressed: () async {
            PhoneAuthCredential phoneAuthCredential =
                PhoneAuthProvider.credential(
                    verificationId: verificationId,
                    smsCode: otpController.text);

            signInWithPhoneAuthCredential(phoneAuthCredential);
          },
          child: Text("VERIFY"),
          // style: ButtonStyle(),
        ),
        Spacer(),
      ],
    );
  }

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        body: Container(
          child: showLoading
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : currentState == MobileVerificationState.SHOW_MOBILE_FORM_STATE
                  ? getMobileFormWidget(context)
                  : getOtpFormWidget(context),
          padding: const EdgeInsets.all(16),
        ));
  }
}
