import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:overlay_support/overlay_support.dart';
import 'package:task_app/services/auth.dart';
import 'package:task_app/services/internetCon.dart';
import 'package:task_app/views/Home.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  void initState() {
    super.initState();
    InternetConnectionChecker().onStatusChange.listen((status) {
      final connected = status == InternetConnectionStatus.connected;
      showSimpleNotification(Text(
          connected ? "CONNECTED TO INTERNET" : "PLEASE CONNECT TO INTERNET"));
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow.shade600,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Welcome To Task App",
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.black87,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Image.asset('assets/img/kbc.webp'),
            const SizedBox(height: 20),

            TextButton(
              onPressed: () async{
                await signWithGoogle();
                  Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => Home()));
              },
              child: Container(
                width: MediaQuery.of(context).size.width * .5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blueAccent,
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                          width: 25,
                          height: 25,
                          child: Image(
                              image: NetworkImage(
                                  "https://e7.pngegg.com/pngimages/114/607/png-clipart-g-suite-pearl-river-middle-school-google-software-suite-email-sign-up-button-text-logo.png"))),
                      Text(
                        "Sign in with Google",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),

                      ),
                    ],
                  ),
                ),
              ),
            ),

            // SizedBox(
            //   width: 300,  // Adjust the width as needed
            //   child: SignInButton(
            //     Buttons.GoogleDark,
            //     onPressed: () async {
            //       await signWithGoogle();
            //     },
            //   ),
            // ),

            const SizedBox(height: 20),
            const Text(
              "By Countinuing. You are agree with our T&Cs ",
              style: TextStyle(
                  fontSize: 12,
                  color: Colors.black87,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
