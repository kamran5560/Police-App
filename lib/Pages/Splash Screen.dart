import 'package:flutter/material.dart';

import 'Constant/Constant Widgets.dart';
import 'Login Page.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => loginsreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration:  BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment(1, 1),
            colors: <Color>[
              Color(0xff2500E0),
              Color(0xffE31E33),
            ],
          ),
        ),
        child:
            Center(
              child: CircularProgressIndicator(
                color: Colors.white,
                strokeWidth: 4.0,
              ),
            )

      ),
    );
  }
}
