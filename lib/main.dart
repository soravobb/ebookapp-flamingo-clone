
import 'package:flutter/material.dart';

import 'Detailspage.dart';
import 'homescreen.dart';
import 'welcomescreen.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Book App',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        textTheme: Theme.of(context).textTheme.apply(
          displayColor: Colors.black,
        ),
      ),
      home: WelcomeScreen(),
      routes: {
        'welcomescreen' :(context) => WelcomeScreen(),
        'homescreen' : (context) => HomeScreen(),
      }
    );
  }
}

