
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/Bitmap.png"),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
              text: TextSpan(
                style: Theme
                    .of(context)
                    .textTheme
                    .displayMedium,
                children: [
                  TextSpan(
                    text: "flamin",
                  ),
                  TextSpan(
                    text: "go.",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15,),
            Container(padding:  EdgeInsets.symmetric(vertical: 2, horizontal: 25),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black87,
                    spreadRadius: 0.1,
                    blurRadius: 2,
                  ),
                ],
              ),

              child: TextButton(onPressed: () {
                Navigator.pushNamed(context, 'homescreen');
              },
              child: Text('start reading',
               style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold,),),),
            ),
          ],
        ),
      ),
    );
  }
}

        