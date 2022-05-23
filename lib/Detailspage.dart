
import 'dart:ui';


import 'package:ebookapp/ReadingTodayList.dart';
import 'package:ebookapp/constants.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(height: 300,
              width: double.infinity,
          decoration: BoxDecoration(
          image: DecorationImage(
          image: AssetImage("assets/images/bg.png",),
    alignment: Alignment.topCenter,
    fit: BoxFit.fitWidth,
        ),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(45),
              bottomRight: Radius.circular(45)
            )
          ),
              child: Column(
                children: [
                  SizedBox(height: 35,),
                  Row(mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              Text('Crushing &',
                              style: TextStyle(
                                fontSize: 25,
                              ),),
                              Text('Influence',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text('Everyone wanted to win the game of the best and people winning a A game with the little things you have',
                                style: TextStyle(fontSize: 10, color: kLightBlackColor,),),
                              ),
                              SizedBox(height: 15,),
                              Container(padding:  EdgeInsets.symmetric(vertical: 10, horizontal: 50),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black38,

                                    ),
                                  ],
                                ),

                                  child: Text('Read',
                                    style: TextStyle(fontSize: 10,color: Colors.black,fontWeight: FontWeight.bold,),),),
                              ],
                          ),
                        ),
                      ),
                      Image.asset("assets/images/book-1.png",),
                    ],
                  ),
                ],
              ),
        ),
            Column(
              children: [
                Chapters(name: "Money",
                chapterNumber: 1,
                tag: "life is about to change",
                press: () {} ,),
                Chapters(name: "Power",
                  chapterNumber: 1,
                  tag: "everything loves power",
                  press: () {} ,),
                Chapters(name: "Influence",
                  chapterNumber: 1,
                  tag: "influence easily like never before",
                  press: () {} ,),
                Chapters(name: "Win",
                  chapterNumber: 1,
                  tag: "winning is what matters",
                  press: () {} ,),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      style: TextStyle(fontSize: 30),
                      children: [
                        TextSpan(
                          text: "You might also ",style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),),
                        TextSpan(
                            text:  "like...",
                            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black)),],),),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Stack(
              children: [
                Positioned(
                  child: Container(
                      height: MediaQuery.of(context).size.width *0.50,
                      width: MediaQuery.of(context).size.width *0.90,
                      decoration: BoxDecoration(
                          color: Color(0xFFEAEAEA).withOpacity(0.50),
                          borderRadius: BorderRadius.circular(30,)
                      ),
                      child: Stack(
                        children: [
                          Row(mainAxisAlignment: MainAxisAlignment.start,
                            children:  [
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Column(
                                  children: [
                                    SizedBox(height: 30,),
                                    Text('New york Time Best For 11th March 2022',style: TextStyle(fontSize: 7,color: kLightBlackColor,),),
                                    SizedBox(height: 8,),
                                    Text("How to win \nfriends & influence",style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,),),
                                    SizedBox(height: 8,),
                                    Text("When the earth was flat and \neveryone wanted to win the game \nof the best and people",
                                      style: TextStyle(fontSize: 8,color: kLightBlackColor,),),
                                    SizedBox(height: 8,),
                                    Text("Gary Venchuk",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(fontSize: 10, color: kLightBlackColor,fontWeight: FontWeight.bold),),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                  ),
                ),
                Positioned(
                  top: 10,
                  right: 10,
                  child:Image.asset("assets/images/book-3.png",) ,),
                Positioned(
                  bottom: 0,
                  right: 0,

                  child: SizedBox(
                    height: 50,
                    width:120,
                    child: ReadButton(text: 'Read', press: () {}, ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
        ],
      ),
    ),
    );
  }
}

class Chapters extends StatelessWidget {
  final String name;
  final String tag;
  final int chapterNumber;
  final Function press;
  const Chapters({
    Key? key, required this.name, required this.tag, required this.chapterNumber, required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: 450,
      padding:
      EdgeInsets.symmetric(vertical: 20, horizontal: 30,),
      margin: EdgeInsets.only(bottom: 15,),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(40),
         boxShadow: [BoxShadow(
           color: Colors.black38,
           spreadRadius: 0.1,
           blurRadius: 5,
         ),]
      ),
      child: Row(
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Chapter $chapterNumber : $name\n',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),
                ),

                TextSpan(
                  text: tag,style: TextStyle(fontSize: 12,color: kLightBlackColor,)
                ),
              ]
            )
          ),
           Spacer(),
           IconButton(
            icon: Icon(
              Icons.arrow_forward_ios,
              size:18,
            ), onPressed: press (),
          ),
        ],
      ),
    );

  }
}
