import 'package:flutter/material.dart';

import 'Police Clearance1.dart';

class Police_Clearance2 extends StatefulWidget {
  const Police_Clearance2({Key? key}) : super(key: key);

  @override
  State<Police_Clearance2> createState() => _Police_Clearance2State();
}

class _Police_Clearance2State extends State<Police_Clearance2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Requirements'),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue, Colors.purple], // Define your gradient colors here
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
      body: SafeArea(
        child:Container(
          padding: EdgeInsets.symmetric(vertical: 12,horizontal: 12),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Requirement at Submission',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  fontWeight: FontWeight.bold,fontSize: 24
                ),
              ),
              SizedBox(height: 22),
              Card1("1.","CNIC Copy"),
              SizedBox(height: 12),
              Card1("2.","Two Passport size photos"),
              SizedBox(height: 12),
              Card1("3.","Passport Copy"),
              SizedBox(height: 12),
              Card2("4.","Two Verifies and attach Their CNIC Photo Copy"),
              SizedBox(height: 12),
              Card2("5.","Showing orignial CNIC is required at the time\n of collecting certificate."),
              SizedBox(height: 12),
              Card2("6.","The police clearance certificate will be \ncollected by the applicant, if out of country, \nhis blood relatiopn only may collect it."),
              SizedBox(height: 82),
              Padding(
                padding:  EdgeInsets.only(bottom: 52),
                child: Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) =>
                                Police_Clearance1()));
                      },
                      child: Text('Next'),
                    ),
                  ],
                ),
              ),

            ],
          ),
        ) ,
      ),
    );
  }

  Widget Card1(String text1,String text2){
    return   Row(
      children: [
        Text(
          '${text1}',
          style: TextStyle(
              fontWeight: FontWeight.w500,fontSize: 20
          ),
        ),
        SizedBox(width: 12),
        Text(
          '${text2}',
          style: TextStyle(
              fontWeight: FontWeight.w400,fontSize: 16
          ),
        ),
      ],
    );
  }
  Widget Card2(String text1,String text2){
    return   Row(crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '${text1}',
          style: TextStyle(
              fontWeight: FontWeight.w500,fontSize: 20
          ),
        ),
        SizedBox(width: 12),
        Text(
          '${text2}',
          style: TextStyle(
              fontWeight: FontWeight.w400,fontSize: 16
          ),
        ),
      ],
    );
  }

}
