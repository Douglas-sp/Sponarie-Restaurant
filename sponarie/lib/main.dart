import 'package:flutter/material.dart';
import 'package:sponarie/screens/Home1Screen.dart';
import 'package:sponarie/screens/LoadingPage.dart';
import 'package:sponarie/screens/Logininpage.dart';
import 'package:sponarie/screens/SignupScreen.dart';
import 'package:sponarie/screens/TrackOrderPage.dart';
import 'package:sponarie/screens/DeliveryMenu.dart';

void main() {
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
        //  home: SignupsScreen(),

        //home: TrackOrder(),
        //home: LoadingPage(),
        //home: SignupsScreen(),
        // home: LoginPage(),
        //home: Home1(),
        // home: LoadingPage(),
        home: DeliveryMenu()

      );
  }
}
