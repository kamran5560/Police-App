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
              Color(0xff668cff),
              Color(0xffff4d4d),
            ],
          ),
        ),
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: CircleAvatar(
                radius: 50,
                backgroundColor: Colors.white,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(
                    'images/Swat-Police-Logo.png',
                    width: 100,
                    height: 100,
                  ),
                ),
              ),
            ),
            SizedBox(height: 24),
            CircularProgressIndicator(
              color: Colors.white,
              strokeWidth: 4.0,
            )
          ],
        )


      ),
    );
  }
}
