// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:math';

import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({ Key? key }) : super(key: key);

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
            child: ListView(
    padding: EdgeInsets.zero,
    children: [
     DrawerHeader(
        decoration: BoxDecoration(
          color: Colors.black,
        ),
        child: Column(
          children: [
            SizedBox(height: 40,),
            Center(
              child: Row(
              children: [
               Center(
                 child: Container(
                      height: 40,
                      width: 40,
                      child: 
                        Icon( Icons.person_pin,
                        size: 60
                        ,
                          color: Colors.red,
                         
                      ),
                     
                    ),
               ),
               SizedBox(
                width: 20
                ,
               ),
         Container(
          child: Column(
              children: [
               
                              RichText(
                    text: TextSpan(style: TextStyle(fontSize: 20), children: [
                  TextSpan(text: "Sign In (Cloud)"),
                  
                             
                          ])),
                          RichText(
                    text: TextSpan(style: TextStyle(fontSize: 16), children: [
                  TextSpan(text: "sign in to sync documents"),
                  
                             
                          ])),
              ],
              
          ),
                       )
                      ],),
            ),
         
          ],
        ),
      ),
      ListTile(
        title:  Row(
          children: [
                    Icon( Icons.favorite,
                        color: Colors.red,
                        ),
                    SizedBox(
                          width: 20,
                          ),
                          Text('Favorite'),
                      ],
                       ),
                     onTap: () {  },
                     ),
   ListTile(
        title:  Row(
          children: [
                    Icon( Icons.tag,
                        color: Colors.red,
                        ),
                    SizedBox(
                          width: 20,
                          ),
                          Text('Manage Tags'),
                      ],
                       ),
                     onTap: () {  },
                     ),  ListTile(
        title:  Row(
          children: [
                    Icon( Icons.delete,
                        color: Colors.red,
                        ),
                    SizedBox(
                          width: 20,
                          ),
                          Text('Trash'),
                      ],
                       ),
                     onTap: () {  },
                     ),  ListTile(
        title:  Row(
          children: [
                    Icon( Icons.picture_as_pdf,
                        color: Colors.red,
                        ),
                    SizedBox(
                          width: 20,
                          ),
                          Text('PDF Tools'),
                      ],
                       ),
                     onTap: () {  },
                     ),  ListTile(
        title:  Row(
          children: [
                    Icon( Icons.note_alt_rounded,
                        color: Colors.red,
                        ),
                    SizedBox(
                          width: 20,
                          ),
                          Text('Signature'),
                      ],
                       ),
                     onTap: () {  },
                     ),  ListTile(
        title:  Row(
          children: [
                    Icon( Icons.qr_code_scanner,
                        color: Colors.red,
                        ),
                    SizedBox(
                          width: 20,
                          ),
                          Text('QR Scanner'),
                      ],
                       ),
                     onTap: () {  },
                     ),  ListTile(
        title:  Row(
          children: [
                    Icon( Icons.qr_code_scanner_outlined,
                        color: Colors.red,
                        ),
                    SizedBox(
                          width: 20,
                          ),
                          Text('QR Generator'),
                      ],
                       ),
                     onTap: () {  },
                     ),  ListTile(
        title:  Row(
          children: [
                    Icon( Icons.settings,
                        color: Colors.red,
                        ),
                    SizedBox(
                          width: 20,
                          ),
                          Text('Settings'),
                      ],
                       ),
                     onTap: () {  },
                     ),  
                     Divider(
                      height: 2,
                      thickness: sqrt1_2,
                      color: Colors.grey,
                     ),
                     ListTile(
        title:  Row(
          children: [
                    Icon( Icons.apple,
                        color: Colors.red,
                        ),
                    SizedBox(
                          width: 20,
                          ),
                          Text('DOC Scanner IOS'),
                      ],
                       ),
                     onTap: () {  },
                     ),  ListTile(
        title:  Row(
          children: [
                    Icon( Icons.share,
                        color: Colors.red,
                        ),
                    SizedBox(
                          width: 20,
                          ),
                          Text('Share With Your Friends'),
                      ],
                       ),
                     onTap: () {  },
                     ),  ListTile(
        title:  Row(
          children: [
                    Icon( Icons.question_answer,
                        color: Colors.red,
                        ),
                    SizedBox(
                          width: 20,
                          ),
                          Text('FAQ'),
                      ],
                       ),
                     onTap: () {  },
                     ),  ListTile(
        title:  Row(
          children: [
                    Icon( Icons.help,
                        color: Colors.red,
                        ),
                    SizedBox(
                          width: 20,
                          ),
                          Text('Help'),
                      ],
                       ),
                     onTap: () {  },
                     ),  ListTile(
        title:  Row(
          children: [
                    Icon( Icons.mail,
                        color: Colors.red,
                        ),
                    SizedBox(
                          width: 20,
                          ),
                          Text('Contact Us'),
                      ],
                       ),
                     onTap: () {  },
                     ),    
    ],

        ),);
  }
}