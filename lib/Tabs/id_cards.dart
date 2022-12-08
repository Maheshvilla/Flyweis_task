import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class IDCards extends StatefulWidget {
  const IDCards({ Key? key }) : super(key: key);

  @override
  State<IDCards> createState() => _IDCardsState();
}

class _IDCardsState extends State<IDCards> {
 DateTime now = DateTime.now();
  @override
  Widget build(BuildContext context) {
    String formattedDate = DateFormat(' d MMM yyyy kk:mm').format(now);
    return Column(
                  children: [
                     Card(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Icon(
                            Icons.folder,
                            color: Colors.yellow,
                            size: 40,
                          ),
                        ),
// SizedBox(width: 20,),
                        Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            RichText(
                                text: TextSpan(
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black),
                                    children: [
                                  TextSpan(text: "New folder"),
                                ])),
                            RichText(
                                text: TextSpan(
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black),
                                    children: [
                                  TextSpan(text: formattedDate),
                                ])),
                          ],
                        ),
                        SizedBox(
                          width: 60,
                        ),
                        IconButton(
                            onPressed: () {}, icon: Icon(Icons.more_vert)),
                      ],
                    )),
                  ],
                );
  }
}