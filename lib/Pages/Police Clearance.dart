import 'package:flutter/material.dart';

class Police_Clearance extends StatefulWidget {
  const Police_Clearance({Key? key}) : super(key: key);

  @override
  State<Police_Clearance> createState() => _Police_ClearanceState();
}

class _Police_ClearanceState extends State<Police_Clearance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Wellcom",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w500,color: Colors.black),),
      ),
    );
  }
}
