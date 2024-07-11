import 'package:flutter/material.dart';

class NADRA_Clearance extends StatefulWidget {
  const NADRA_Clearance({Key? key}) : super(key: key);

  @override
  State<NADRA_Clearance> createState() => _NADRA_ClearanceState();
}

class _NADRA_ClearanceState extends State<NADRA_Clearance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("NADRA Form",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w500,color: Colors.black),),
      ),
    );
  }
}
