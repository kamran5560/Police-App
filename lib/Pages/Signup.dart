import 'package:flutter/material.dart';
import 'Home Page.dart';

class signupsreen extends StatefulWidget {
  const signupsreen({Key? key}) : super(key: key);
  @override
  State<signupsreen> createState() => _signupsreenState();
}

class _signupsreenState extends State<signupsreen> {
  TextEditingController F_Name = TextEditingController();
  TextEditingController CNIC = TextEditingController();
  TextEditingController L_Name = TextEditingController();
  TextEditingController Password = TextEditingController();
  TextEditingController Confirm_Password = TextEditingController();
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 12,vertical: 24),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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

                Padding(
                  padding:  EdgeInsets.only(top: 24,bottom: 16),
                  child: Text(
                    'Sign Up your Account',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 28,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                TextField_Design("First Name","First Name", F_Name),
                TextField_Design("Last Name","Last Name", L_Name),
                TextField_Design("Enter CNIC","Enter CNIC", CNIC),
                TextField_Design_pas("Enter Password", Password),
                TextField_Design_pas("Confirm Password", Confirm_Password),
                // ),
                Center(
                  child: Container(
                    margin: EdgeInsets.only( top: 30),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Color(0xff668cff), Color(0xffff4d4d)],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.transparent,
                        shadowColor: Colors.transparent,
                        padding: EdgeInsets.symmetric(
                            horizontal: 24.0, vertical: 12.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      onPressed: () {
                        Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    Home_Page()));
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 80),
                        child: Text(
                          'Done ',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: width * 0.051,
                            color: Color(0xffFFFFFF),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.only(top: 24,bottom: 52),
                  child: Center(
                    child: Text(
                      "Forget your Password ?",
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget TextField_Design(
      String hint,
      String lable,
      TextEditingController Controller,
      ) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 16),
        child: TextField(
          controller: Controller,
          textAlign: TextAlign.start,
          decoration: InputDecoration(
            labelText: '$lable',
            hintText: "$hint",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
              borderSide: BorderSide(color: Colors.grey, width: 0.0),
            ),
          ),
        ),
      ),
    );
  }

  Widget TextField_Design_pas(
      String pasword,
      TextEditingController Controller,
      ) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 16),
      child: TextField(
        obscureText: _obscureText,
        decoration: InputDecoration(
          labelText: '$pasword',
          suffixIcon: IconButton(
            icon: Icon(
              _obscureText ? Icons.visibility_off : Icons.visibility,
            ),
            onPressed: () {
              setState(() {
                _obscureText = !_obscureText;
              });
            },
          ),
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}

