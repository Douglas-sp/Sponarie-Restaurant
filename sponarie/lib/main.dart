import 'package:flutter/material.dart';
import 'package:sponarie/screens/Home1Screen.dart';
import 'package:sponarie/screens/LoadingPage.dart';
import 'package:sponarie/screens/Logininpage.dart';
import 'package:sponarie/screens/SignupScreen.dart';
import 'package:sponarie/screens/TrackOrderPage.dart';
<<<<<<< HEAD
=======

>>>>>>> spo

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
<<<<<<< HEAD
      //  home: SignupsScreen(),
<<<<<<< HEAD
      home: TrackOrder(),
      //home: LoadingPage(),           
=======
       //home: SignupsScreen(),
      //home: LoginPage(),
        home: Home1(),
      //home: LoadingPage(),      
>>>>>>> mar
=======
      //home: LoginPage(),
      //home: LoadingPage(),
      home: TrackOrder(),      
>>>>>>> spo
    );
  }
}