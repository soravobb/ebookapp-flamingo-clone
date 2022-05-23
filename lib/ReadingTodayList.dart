import 'package:ebookapp/Detailspage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReadingToday extends StatelessWidget {
  final String image;
  final String title;
  final String author;
  final Function pressDetails;
  final Function pressRead;
  const ReadingToday({
    Key? key, required this.image,  required  this.title, required  this.author,  required this.pressDetails, required this.pressRead,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 245,
      width: 202,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 221,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow:[
                    BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 33,
                      color: Color(0xFFD3D3D3),
                    ),
                  ]
              ),
            ),
          ),
          Image.asset(image,
            width: 150,),
          Positioned(
            top: 35,
            right: 10,
            child: Column(
              children: [
                IconButton(
                  icon: Icon(
                    Icons.favorite_border,), onPressed: () {},
                ),
              ],
            ),
          ),
          Positioned(
            top: 160,
            child: Container(
              height: 85,
              width: 202,
              child:Column(mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                        children: [TextSpan(
                          text:"$title\n",style: TextStyle(fontWeight: FontWeight.bold,),
                        ),
                          TextSpan(
                            text:author,style: TextStyle(),
                          )
                        ]
                    ),
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        onTap:() => Navigator.of(context).push(MaterialPageRoute(
        builder: (BuildContext context) =>  DetailsPage())),
                        child: Container(
                          width: 100,
                          padding: EdgeInsets.symmetric(vertical: 18,),
                          alignment: Alignment.center,
                          child: Text("Details"),),
                      ),
                      Expanded(
                        child: ReadButton(text: "Read",
                          press: pressRead,),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ReadButton extends StatelessWidget {
  final String text;
  final double radious;
  final Function press;
  const ReadButton({
    Key? key,
    required this.text,
    this.radious = 29,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press (),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 17,),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(radious),
            bottomRight: Radius.circular(radious),
          ),
          color: Colors.black,
        ),
        child: Text(text,style: TextStyle(color: Colors.white,),),
      ),
    );
  }
}
