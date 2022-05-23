import 'dart:io';
import 'dart:ui';

import 'package:ebookapp/ReadingTodayList.dart';
import 'package:flutter/material.dart';

import 'Detailspage.dart';
import 'constants.dart';



class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/main_page_bg.png",),
                  alignment: Alignment.topCenter,
                  fit: BoxFit.fitWidth,
                ),
              ),
              child: Column(mainAxisAlignment: MainAxisAlignment.start,
                 children: [
                   SizedBox(height: 50),
                   Padding(
                     padding: const EdgeInsets.only(right: 80),
                     child: RichText(
                     text: TextSpan(
                     style: TextStyle(fontSize: 40),
                        children: [
                          TextSpan(
                             text: "what are your\nreading ", style: TextStyle(color: Colors.black),),
                          TextSpan(
                            text:  "today?",
                          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.black)),],),),),
                   SizedBox(height: 20),
                   SingleChildScrollView(
                     scrollDirection: Axis.horizontal,
                     child: Row(
                       children: [
                            Padding(
                              padding: const EdgeInsets.all(12),
                              child: ReadingToday(
                               image: "assets/images/book-1.png",
                               title: "Crushing & Influence",
                               author: "Gary venchuk",
                               pressRead: () {
                               }, pressDetails: () {

                              },
                           ),
                            ),

                         Padding(
                           padding: const EdgeInsets.all(12),
                           child: ReadingToday(
                             image: "assets/images/book-2.png",
                             title: "Crushing & Influence",
                             author: "Gary venchuk",
                             pressRead: () {}, pressDetails: () {},
                           ),
                         ),
                         Padding(
                           padding: const EdgeInsets.all(12),
                           child: ReadingToday(
                             image: "assets/images/book-1.png",
                             title: "Crushing & Influence",
                             author: "Gary venchuk",
                             pressRead: () {}, pressDetails: () {},
                           ),
                         ),
                       ],
                     ),
                   ),
                   SizedBox(height: 10,),
                   Padding(
                     padding: const EdgeInsets.all(15),
                     child: Row(mainAxisAlignment: MainAxisAlignment.start,
                       children: [
                         RichText(
                           text: TextSpan(
                             style: TextStyle(fontSize: 30),
                             children: [
                               TextSpan(
                                   text: "Best of the ",style: TextStyle(color: Colors.black)),
                               TextSpan(
                                   text:  "day",
                                   style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,color: Colors.black)),],),),
                       ],
                     ),
                   ),
                   SizedBox(height:10,),
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
                 ],
               ),
             ),
                     SizedBox(height: 8,),
                     Padding(
                       padding: const EdgeInsets.all(15.0),
                       child: Row(
                         children: [
                           RichText(
                             text: TextSpan(
                               style: TextStyle(fontSize: 30),
                               children: [
                                 TextSpan(
                                   text: "Continue ",style: TextStyle(fontSize: 30, color: Colors.black),),
                                 TextSpan(
                                     text:  "reading...",
                                     style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black)),],),),
                         ],
                       ),
                     ),
                   SizedBox(height: 15,),
                   Column(
                     children: [
                       GestureDetector(
                         onTap: () => Navigator.of(context).push(MaterialPageRoute(
                             builder: (BuildContext context) =>  DetailsPage())),
                         child: Container(
                           height: MediaQuery.of(context).size.width *0.20,
                           width: MediaQuery.of(context).size.width *0.90,
                           decoration: BoxDecoration(
                             color: Colors.white,
                             borderRadius: BorderRadius.circular(40),
                             boxShadow: [
                               BoxShadow(
                                 offset: Offset(0,10),
                                 blurRadius: 33,
                                 color: Color(0xFFD3D3D3).withOpacity(.80,)
                               ),
                             ]
                           ),
                             child: Column(
                               mainAxisAlignment: MainAxisAlignment.start,
                               children: [
                                 Expanded(
                                 child: Row(
                                   mainAxisAlignment: MainAxisAlignment.start,
                                   children: [
                                     Padding(
                                       padding: const EdgeInsets.all(20.0),
                                       child: Column(
                                         children:  const [
                                           Text('Crushing & influence',
                                             style: TextStyle(fontSize: 12,
                                               fontWeight: FontWeight.bold),),

                                             Text('Gary venchuk',
                                               style: TextStyle(
                                                 fontSize: 10,color: kLightBlackColor,
                                                 fontWeight: FontWeight.bold,
                                               ),
                                             ),
                                         ],
                                       ),
                                     ),
                                     Image.asset('assets/images/book-1.png'),
                                   ],
                                 ),
                               ),
                               ],
                             ),
                           ),
                         ),
                            SizedBox(height: 30,)
      ],
    ),
    ],
    ),
      ),
    );


  }
}

