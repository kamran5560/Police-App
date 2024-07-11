import 'package:flutter/material.dart';

import 'Home Page.dart';



class loginsreen extends StatefulWidget {
  const loginsreen({Key? key}) : super(key: key);

  @override
  State<loginsreen> createState() => _loginsreenState();
}
class _loginsreenState extends State<loginsreen> {
  TextEditingController Email = TextEditingController();
  TextEditingController Password = TextEditingController();
  // bool obsecure = false;
  // final FirebaseAuth g_auth = FirebaseAuth.instance;
  // final GoogleSignIn g_User = GoogleSignIn();
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    // bool _passwordInVisible = true;
    return Scaffold(
      // appBar: AppBar(
      //   automaticallyImplyLeading: false,
      //   elevation: 0,
      //   backgroundColor: Colors.transparent,
      // ),
      // backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:  EdgeInsets.only(left: 32),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Image.asset("images/LiboQ_Logo.png",),
                      SizedBox(height: 22),
                      Text(
                        'Sign In',
                        style: TextStyle(
                            color: Colors.black,fontSize: 28,fontWeight: FontWeight.w500
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 80),
                  child: Column(
                    children: [
                      TextField_Design("Email", Email),
                      TextField_Design("pasword", Password),
                    ],
                  ),
                ),
                // ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 15, top: 30),
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Color(0xff2500E0), Color(0xffE31E33)],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.transparent, // Set the primary color to transparent
                            shadowColor: Colors.transparent, // Remove the shadow
                            padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          onPressed: (){
                            Navigator.of(context).pushReplacement(MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    Home_Page()));
                          },
                          child:
                            Container(
                              padding:
                              EdgeInsets.symmetric( horizontal: 80),
                              child: Text(
                                'sing in ',
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
                  ],
                ),


                Padding(
                  padding:  EdgeInsets.only(top: 72,bottom: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?",
                        style: TextStyle(
                            fontSize: width * 0.030, fontWeight: FontWeight.w400),
                      ),

                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget TextField_Design(
      String hint,
      TextEditingController Controller,
      ) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      child: Container(
        width: width * 0.879,
        height: height * 0.148,
        child: Padding(
          padding: EdgeInsets.only(left: 40),
          child: TextField(
            controller: Controller,
            textAlign: TextAlign.start,
            decoration: InputDecoration(
              hintText: "$hint",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(43.0),
                borderSide: BorderSide(color: Colors.grey, width: 0.0),
              ),
            ),
          ),
        ),
      ),
    );
  }

}

