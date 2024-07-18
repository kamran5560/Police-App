import 'package:flutter/material.dart';
import 'Constant/Constant Widgets.dart';
import 'Login Page.dart';
import 'Nadra Verification.dart';
import 'NawBar.dart';
import 'Police Clearance1.dart';
import 'Police Clearance2.dart';
import 'Renewal Form.dart';

class Home_Page extends StatefulWidget {
  @override
  _Home_PageState createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  var scaffoldKey = GlobalKey<ScaffoldState>();

  final TextEditingController _controller = TextEditingController();
  String query = "";

  List<Map<String, dynamic>> options = [
    {
      "title": "Police Clearance Certificate",
      "page": Police_Clearance2(),
    },
    {
      "title": "Renewal Clearance Certificate",
      "page": Police_Clearance2(),
    },
    // {
    //   "title": "Police Departmental Verification",
    //   "page": null, // Add the respective page here
    // },
    // {
    //   "title": "NADRA Verification Completed",
    //   "page": null, // Add the respective page here
    // },
    // {
    //   "title": "Provisional License Issued",
    //   "page": null, // Add the respective page here
    // },
    // {
    //   "title": "Weapon License Printing",
    //   "page": null, // Add the respective page here
    // },
    // {
    //   "title": "Weapon Authorization/Demand Note",
    //   "page": null, // Add the respective page here
    // },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: Nav_Draw(),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16),
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
                        color: Colors.grey,
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
                      ),
                    )
                  ],
                ),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Welcom KPK Police",
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                  ],
                ),
                SizedBox(height: 22),
                TextField(
                  controller: _controller,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: "Search...",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
                  onChanged: (value) {
                    setState(() {
                      query = value;
                    });
                  },
                ),
                SizedBox(height: 22),
                Column(
                  children: _buildSearchResults(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  List<Widget> _buildSearchResults() {
    List<Map<String, dynamic>> filteredOptions = options
        .where((option) =>
        option["title"].toLowerCase().contains(query.toLowerCase()))
        .toList();

    List<Widget> rows = [];
    for (var i = 0; i < filteredOptions.length; i += 2) {
      rows.add(
        Row(
          children: [
            Expanded(
              child: Home_Screen_Card(filteredOptions[i]["title"], () {
                if (filteredOptions[i]["page"] != null) {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => filteredOptions[i]["page"]));
                }
              }),
            ),
            SizedBox(width: 16), // Space between the two cards
            if (i + 1 < filteredOptions.length)
              Expanded(
                child: Home_Screen_Card(filteredOptions[i + 1]["title"], () {
                  if (filteredOptions[i + 1]["page"] != null) {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) =>
                        filteredOptions[i + 1]["page"]));
                  }
                }),
              ),
          ],
        ),
      );
      rows.add(SizedBox(height: 22)); // Space between rows
    }

    return rows;
  }
}
