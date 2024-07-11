import 'package:flutter/material.dart';


class Nav_Draw extends StatefulWidget {
  const Nav_Draw({Key? key}) : super(key: key);

  @override
  State<Nav_Draw> createState() => _Nav_DrawState();
}

class _Nav_DrawState extends State<Nav_Draw> {

  int _status = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Drawer(
        child: Padding(
          padding:  EdgeInsets.only(top:36,left: 18,right: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                icon: Icon(Icons.arrow_back_ios, color: Colors.black),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              SizedBox(height: 12),
              CircleAvatar(
                radius: 50,
                backgroundColor: Colors.white,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(
                    'images/Swat-Police-Logo.png',
                    width: 80,
                    height: 80,
                  ),
                ),
              ),

              Text(
                'Muhammad Hamza',
                style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18,color: Colors.black),
              ),

              Text(
                'MHamza700@gmail.com',
                style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: Colors.grey,),
              ),
              SizedBox(height: 42),
              GestureDetector(
                onTap: () {},
                child : Row(
                  children: [
                    Icon(Icons.error_outline_outlined,color: Colors.grey,),
                    SizedBox(width: 8),
                    Text(
                      'About Us',
                      style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16,color: Colors.black),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 32),
              Row(
                children: [
                  Icon(Icons.settings_outlined,color: Colors.grey,) ,
                  SizedBox(width: 8),
                  Text(
                    'Settings',
                    style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16,color: Colors.black),
                  ),
                ],
              ),
              SizedBox(height: 32),
              Row(
                children: [
                  Icon(Icons.help_outline_outlined,color: Colors.grey,) ,
                  SizedBox(width: 8),
                  Text(
                    'Help and Supports',
                    style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16,color: Colors.black),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
