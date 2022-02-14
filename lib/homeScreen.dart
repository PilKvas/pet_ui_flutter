// ignore_for_file: unused_import, prefer_const_constructors, prefer_typing_uninitialized_variables, unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_application_1/configuration.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
    double xOffset = 0;
    double yOffset = 0;
    double  scaleFactor = 1;
    bool isDrawerOpen = false;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      transform: Matrix4.translationValues(xOffset, yOffset, 0)..scale(scaleFactor),

      duration: Duration(milliseconds: 250),
      color: Colors.white,
        child: Column(
          children: [
            SizedBox(height: 40,),
            Container(
              margin: EdgeInsets.symmetric(horizontal:20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween, 
                children: [
                  IconButton(
                    icon: Icon(Icons.menu), onPressed: (){

                      setState(() {
                        var xOffset = 230;
                        var yOffset = 120;
                        var scaleFactor = 0.6;

                      });
                  }),
                  Column(
                    children: [
                      Text('Location'),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: primaryGreen,
                          ),
                          Text('Ukraine'),
                        ]
                      ),
                 
                  ]
                  ),
                CircleAvatar(),
                ],
              ),
            ),
          ],
        ),
    );
  }
}