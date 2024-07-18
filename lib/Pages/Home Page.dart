import 'package:flutter/material.dart';
import 'Constant/Constant Widgets.dart';
import 'Login Page.dart';
import 'Nadra Verification.dart';
import 'NawBar.dart';
import 'Police Clearance1.dart';
import 'Police Clearance2.dart';
import 'Renewal Form.dart';

class Home_Page extends StatelessWidget {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  int _status = 0;

  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: Nav_Draw(),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16),
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

          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        scaffoldKey.currentState?.openDrawer();
                      },
                      icon: Icon(
                        Icons.notes_sharp,
                        color: Colors.white,
                        size: 32,
                      ),
                    ),
                    GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) => loginsreen()));
                        },
                        child: Icon(
                          Icons.logout,
                          color: Colors.red,
                          size: 24,
                        ))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Welcom KPK Police",
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: Column(
                    children: [
                      TextField(
                        controller: _controller,
                        decoration: InputDecoration(
                          hintText: 'Search...',
                          prefixIcon: Icon(Icons.search),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(12),),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 22),
                Column(
                  children: [
                    Home_Screen_Card("Police Clearance Certificate", () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) =>
                              Police_Clearance2()));
                    }),
                    SizedBox(height: 22),
                    Home_Screen_Card("Renewal Clearance Certificate", () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) =>
                              Police_Clearance2()));
                    }),
                    SizedBox(height: 22),
                    Home_Screen_Card("Police Departmental Verification", () {}),
                    SizedBox(height: 22),
                    Home_Screen_Card("NADRA Verification Completed", () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) =>
                              NADRA_Clearance()));
                    }),
                    SizedBox(height: 22),
                    Home_Screen_Card("Provisional License Issued", () {}),
                    SizedBox(height: 22),
                    Home_Screen_Card("Weapon License Printing", () {}),
                    SizedBox(height: 22),
                    Home_Screen_Card("Weapon Authorization/Demand Note", () {}),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
