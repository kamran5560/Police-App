import 'package:flutter/material.dart';


const BackGroundGradient = BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment(0.8, 1),
      colors: <Color>[
        Color(0xff2500E0),
        Color(0xffE31E33),
      ],
    ));

Widget Home_Screen_Card(String text, Function() onpress){
  return  GestureDetector(
    onTap: onpress,
    child:
    Container(
      height: 120,
      width:  400,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: Colors.grey,
          width: 2,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.7),
            spreadRadius: 1,
            blurRadius: 5,
            offset: Offset(0, 0),
          ),
        ],
      ),
      padding: EdgeInsets.all(12),
      child: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("${text}",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black)),
        ],
      ),
    ),
  );
}