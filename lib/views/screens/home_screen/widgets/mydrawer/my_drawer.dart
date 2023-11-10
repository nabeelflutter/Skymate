import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tech_cscommunity/constants/constants.dart';

Widget myDrawer() {
  return Drawer(
   shape: RoundedRectangleBorder(
     borderRadius: BorderRadius.circular(0)
   ),
    child: Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
         colors: [
            Color(0xffbf27b2),
           Color(0xffc743bc),
           Color(0xff5d51c0),
           Color(0xff5d51c0),
           Color(0xff2785c8),
           Color(0xff2785c8),
            Color(0xff2785c8),
            Color(0xff2785c8),
          ])),
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(
                'assets/images/img.png',
                scale: 5,
              )),
          const SizedBox(
            height: 30,
          ),
          ListTile(
            title: Text(
              'Home',
              style: TextStyle(color: Constants.whight, fontFamily: 'Chusion'),
            ),
          ),
          Container(
            height: 0.5,
            color: Colors.grey.withOpacity(0.5),
          ),
          ListTile(
            title: Text(
              'About Us',
              style: TextStyle(color: Constants.whight, fontFamily: 'Chusion'),
            ),
          ),
          Container(
            height: 0.5,
            color: Colors.grey.withOpacity(0.5),
          ),
          ListTile(
            title: Text(
              'Our Services',
              style: TextStyle(color: Constants.whight, fontFamily: 'Chusion'),
            ),
          ),
          Container(
            height: 0.5,
            color: Colors.grey.withOpacity(0.5),
          ),
          ListTile(
            title: Text(
              'Contact Us',
              style: TextStyle(color: Constants.whight, fontFamily: 'Chusion'),
            ),
          )
        ],
      ),
    ),
  );
}
