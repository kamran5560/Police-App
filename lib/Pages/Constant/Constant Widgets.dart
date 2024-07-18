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
    child: Container(
      height: 80,
      width:  400,
      // width: 200,
      // decoration:  BoxDecoration(
      //   borderRadius: BorderRadius.circular(20),
      //   border: Border.all(
      //     color: Colors.grey,
      //     width: 3,
      //   ),
      //   boxShadow: [
      //     BoxShadow(
      //       color: Colors.grey.withOpacity(0.5),
      //       spreadRadius: 5,
      //       blurRadius: 7,
      //       offset: Offset(0, 3), // changes position of shadow
      //     ),
      //   ],
      //   gradient: LinearGradient(
      //     begin: Alignment.topCenter,
      //     end: Alignment(1, 1),
      //     colors: <Color>[
      //       Colors.blue,
      //       Colors.red,
      //     ],
      //   ),
      // ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Colors.grey,
          width: 3,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
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