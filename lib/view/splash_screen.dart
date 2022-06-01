import 'dart:async';

import 'package:flutter/material.dart';
import 'package:latsol_akhir/R/r.dart';
import 'package:latsol_akhir/view/login_page.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);
  static String route = "splach_screen";

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 5), () {
      //    Navigator.of(context)
      //        .push(MaterialPageRoute(builder: (context) => LoginPage()));
      Navigator.of(context).pushNamed(LoginPage.route);
    });
    return Scaffold(
      backgroundColor: R.colors.primary,
      body: Center(child: Image.asset(R.assets.icSplash)),
    );
  }
}
