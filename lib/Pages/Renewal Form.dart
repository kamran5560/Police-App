import 'package:flutter/material.dart';

class Renewal_Clearance extends StatefulWidget {
  const Renewal_Clearance({Key? key}) : super(key: key);

  @override
  State<Renewal_Clearance> createState() => _Renewal_ClearanceState();
}

class _Renewal_ClearanceState extends State<Renewal_Clearance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Renewal Form",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w500,color: Colors.black),),
      ),
    );
  }
}
