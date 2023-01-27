import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sayurbox/bottom_nav/home.dart';
import 'package:sayurbox/screen/hello_screen.dart';
import 'package:sayurbox/screen/kode_otp.dart';
import 'package:sayurbox/screen/sign_in.dart';
import 'package:sayurbox/screen/sign_up.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startSplashScreen();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          width: 500,
          height: 500,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
            'assets/logo.png',
          )
          )
          ),
        ),
      ),
    );
  }

  startSplashScreen() async {
    var duration = const Duration(seconds: 1);
    return Timer(duration, () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (context) => HelloScreen()));
    });
  }
}
